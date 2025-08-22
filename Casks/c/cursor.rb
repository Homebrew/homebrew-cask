cask "cursor" do
  arch arm: "arm64", intel: "x64"

  version "1.5.2,460bf37e9a7b6a1f441c5faaae8d2c5dda059c18"
  sha256 arm:   "cac669cefb2a5972d6bb14c18e86dc3faa7ec23377b2f189257cc5ead7222a3a",
         intel: "ebeea96a82880327913945773bf0d30b0ca7c66424e01909d374b0552a9fb684"

  url "https://downloads.cursor.com/production/#{version.csv.second}/darwin/#{arch}/Cursor-darwin-#{arch}.zip"
  name "Cursor"
  desc "Write, edit, and chat about your code with AI"
  homepage "https://www.cursor.com/"

  livecheck do
    url "https://api2.cursor.sh/updates/api/update/darwin-#{arch}/cursor/0.0.0/"
    regex(%r{/production/(\h+)/darwin/#{arch}/Cursor[._-]darwin[._-]#{arch}\.zip}i)
    strategy :json do |json, regex|
      match = json["url"]&.match(regex)
      next if match.blank?

      "#{json["name"]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Cursor.app"
  binary "#{appdir}/Cursor.app/Contents/Resources/app/bin/code", target: "cursor"

  zap trash: [
    "~/.cursor",
    "~/.cursor-tutor",
    "~/Library/Application Support/Caches/cursor-updater",
    "~/Library/Application Support/Cursor",
    "~/Library/Caches/com.todesktop.*",
    "~/Library/Caches/com.todesktop.*.ShipIt",
    "~/Library/HTTPStorages/com.todesktop.*",
    "~/Library/Logs/Cursor",
    "~/Library/Preferences/ByHost/com.todesktop.*.ShipIt.*.plist",
    "~/Library/Preferences/com.todesktop.*.plist",
    "~/Library/Saved Application State/com.todesktop.*.savedState",
    "~/Library/Saved Application State/todesktop.com.ToDesktop-Installer.savedState",
  ]
end
