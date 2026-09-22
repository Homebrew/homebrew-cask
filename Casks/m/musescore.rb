cask "musescore" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: ".dmg", linux: "-#{arch}.AppImage"

  version "4.7.5.260831071,4.7.5"
  sha256 arm:          "5a8cc26994d3f346d3e7d88c6a1583959e990ee9346b00d7b1d3f9498de6473a",
         intel:        "5a8cc26994d3f346d3e7d88c6a1583959e990ee9346b00d7b1d3f9498de6473a",
         arm64_linux:  "034f0257fd21ed6b7d4863714dbf8e97cc86d454beb79aaa845a5ade3ff99e36",
         x86_64_linux: "a31b2da2dbcc2191bcc98beb7be5c15f2f517bedb3444def96fe3088b74d3a1e"

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
