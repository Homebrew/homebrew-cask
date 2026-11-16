cask "tabularis@nightly" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.32.1-7,20261116-97cad31"
  sha256 arm:          "eafca1809ee6e7750ee55a0cebd1f365b1d53b11af78f3fa2b2b767737eaa15d",
         intel:        "ab4b728be9d7e2af3cced7cf7c737f63a6b9f4719de12a524eaa7dd37624743f",
         x86_64_linux: "5d5ee2f301bcba5bb28e5a19bbdfbcc903c37616d80e4e0b2712f249b5de050e"

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

    zap trash: [
      "~/.config/tabularis",
      "~/.local/share/applications/tabularis-handler.desktop",
      "~/.local/share/tabularis",
    ]
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
