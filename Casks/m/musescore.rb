cask "musescore" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: ".dmg", linux: "-#{arch}.AppImage"

  version "4.7.7.261109195,4.7.7"
  sha256 arm:          "16a6b33bb12f4a54cd97dfe8e7bc2f21477b9897e4c503e26fa3e332e4ddf8ad",
         intel:        "16a6b33bb12f4a54cd97dfe8e7bc2f21477b9897e4c503e26fa3e332e4ddf8ad",
         arm64_linux:  "39c62201afe179f5d6eed1cf4cc5a7e3431088792421fdf2a1eba4073ce87778",
         x86_64_linux: "8597105814359676483807ce4c4051eaf439bd723ebccaa9160632f56c05a02d"

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
