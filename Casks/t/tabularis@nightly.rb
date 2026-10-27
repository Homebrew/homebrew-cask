cask "tabularis@nightly" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.30.1-1,20261027-184ce75"
  sha256 arm:          "520d2b0796edb5a6391129c5a418981a5e98f858ffff0c2ae66079a480285f3d",
         intel:        "fd9787dd77460dbea49dbc9acf4ec612062eddd8c5a31e36565f250370abf7ae",
         x86_64_linux: "fd952b2bd7b41c5eb50d9946be2d477dff4f404b2bbb000567b63de3a4178e5b"

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
