cask "tabularis@nightly" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.22.1-3,20260904-d470693"
  sha256 arm:         "5cb1c65590fb866d6d62aa33b9d4e08b4f8ba6f9a2fad74fac0a06263a637ba7",
         intel:       "edfa761e1ae42165af35d24b07c76fec2e710ba4697b3c5746150b5bafe9e65c",
         arm64_linux: "bfd2d608205966f8a73225aac3aa017f1e45a19804db5cc6a56b29590f65d744"

  on_macos do
    depends_on macos: :monterey

    app "tabularis.app"

    zap trash: [
      "~/Library/Application Support/tabularis",
      "~/Library/Caches/tabularis",
      "~/Library/Logs/tabularis",
      "~/Library/Preferences/com.debba.tabularis.plist",
      "~/Library/Saved Application State/com.debba.tabularis.savedState",
      "~/Library/WebKit/tabularis",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "tabularis_#{version.csv.first}_amd64.AppImage", target: "tabularis.AppImage"
  end

  url "https://github.com/TabularisDB/tabularis/releases/download/nightly-#{version.csv.second}/tabularis_#{version.csv.first}_#{arch}.#{os}"
  name "Tabularis Nightly"
  desc "Lightweight database management tool"
  homepage "https://tabularis.dev/"

  livecheck do
    url "https://github.com/TabularisDB/tabularis/releases"
    strategy :github_releases do |json|
      json.map do |release|
        next unless release["prerelease"]

        tag = release["tag_name"]
        next unless tag&.start_with?("nightly-")

        tag_suffix = tag.sub(/^nightly-/, "")
        asset = release["assets"]&.find { |a| a["name"]&.match?(/^tabularis_.*_#{arch}\.#{os}$/) }
        next if asset.nil?

        app_version = asset["name"][/^tabularis_(.+)_#{arch}\.#{os}$/, 1]
        next if app_version.nil?

        "#{app_version},#{tag_suffix}"
      end
    end
  end

  auto_updates true
  conflicts_with cask: "tabularis"
end
