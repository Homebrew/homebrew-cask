cask "tabularis@nightly" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.27.1-4,20261012-ad3b19a"
  sha256 arm:          "5c1ade9f3487d5f6d9306f202ebdf93a2b3c5f9b2fe64596e51fa68ecaaca85b",
         intel:        "9bc670458c9e88cbbcc7ccaf22511a85cf4b1fd375d461b950c151fd726e2f0f",
         x86_64_linux: "de21a25cc4d4b9a2c40e902876e08fa68a017ca4d861c884c83698ecd58b8a6c"

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

    app_image "tabularis_#{version.csv.first}_#{arch}.AppImage", target: "tabularis.AppImage"
  end

  url "https://github.com/TabularisDB/tabularis/releases/download/nightly-#{version.csv.second}/tabularis_#{version.csv.first}_#{arch}.#{os}"
  name "Tabularis Nightly"
  desc "Lightweight database management tool"
  homepage "https://tabularis.dev/"

  livecheck do
    url "https://github.com/TabularisDB/tabularis/releases"
    regex(%r{/nightly[._-]([^/]+)/tabularis[._-](.+)[._-]#{arch}\.#{os}}i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]
        next unless release["tag_name"]&.start_with?("nightly")

        release["assets"]&.map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next unless match

          "#{match[2]},#{match[1]}"
        end
      end.flatten
    end
  end

  auto_updates true
  conflicts_with cask: "tabularis"
end
