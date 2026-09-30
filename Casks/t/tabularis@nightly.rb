cask "tabularis@nightly" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.25.1-7,20260930-ff4c5e4"
  sha256 arm:          "041550c645c5c12b32af5b8f23aca12fd2ef5c59997adbe46f3fba33905f94d2",
         intel:        "05a51c58fa55dd7208ac0623dda29558e37c68e6841a9fcda0bca9f12003c99b",
         x86_64_linux: "7e3abd6df1aebe8d3edc45058eb73b248418abb0f09f715068b4a128e8c1038e"

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
