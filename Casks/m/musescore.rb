cask "musescore" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: ".dmg", linux: "-#{arch}.AppImage"

  version "4.7.6.261022093,4.7.6"
  sha256 arm:          "dd78357e652a4df6ec074b9bd63a79e09eedb7c1c9dd6262eb7d9304508dec9c",
         intel:        "dd78357e652a4df6ec074b9bd63a79e09eedb7c1c9dd6262eb7d9304508dec9c",
         arm64_linux:  "e16c4e307f786ed7720d9d4d244213b6640d7e82ecbeb930959964c594f6ea04",
         x86_64_linux: "5fcbd1f292270eca5c3867d56b767c31a173a155216a415f5caee22553f8e7a6"

  on_macos do
    app "MuseScore #{version.major}.app"
    command_wrapper "mscore",
                    executable: "#{appdir}/MuseScore #{version.major}.app/Contents/MacOS/mscore"

    uninstall quit: "org.musescore.MuseScore"

    zap trash: [
      "~/Library/Application Support/MuseScore",
      "~/Library/Caches/MuseScore",
      "~/Library/Caches/org.musescore.MuseScore",
      "~/Library/Preferences/org.musescore.MuseScore*.plist",
      "~/Library/Saved Application State/org.musescore.MuseScore.savedState",
    ]
  end
  on_linux do
    app_image "MuseScore-Studio-#{version.csv.first}-#{arch}.AppImage", target: "MuseScore.AppImage"

    zap trash: [
      "~/.cache/MuseScore",
      "~/.config/MuseScore",
      "~/.local/share/MuseScore",
    ]
  end

  url "https://github.com/musescore/MuseScore/releases/download/v#{version.csv.second}/MuseScore-Studio-#{version.csv.first}#{os}"
  name "MuseScore"
  desc "Open-source music notation software"
  homepage "https://musescore.org/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/MuseScore[._-]Studio[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[2]},#{match[1]}"
      end
    end
  end

  auto_updates true
end
