cask "cursor" do
  arch arm: "arm64", intel: "x64"

  version "1.6.23,9b5f3f4f2368631e3455d37672ca61b6dce8543e"
  sha256 arm:   "1b05db444cd747e481cd3da8120f0bd99dedbf6fac76311615b7cd16f2076888",
         intel: "3e2c9c1f07fff43fc0e3fedb8c6277d32cc7c2f31343eaae28441a1347e959b3"

  url "https://downloads.cursor.com/production/#{version.csv.second}/darwin/#{arch}/Cursor-darwin-#{arch}.zip"
  name "Cursor"
  desc "Write, edit, and chat about your code with AI"
  homepage "https://www.cursor.com/"

  livecheck do
    url "https://api2.cursor.sh/updates/api/update/darwin-#{arch}/cursor/0.0.0/stable"
    regex(%r{/production/(\h+)/darwin/#{arch}/Cursor[._-]darwin[._-]#{arch}\.zip}i)
    strategy :json do |json, regex|
      match = json["url"]&.match(regex)
      next if match.blank?

      "#{json["name"]},#{match[1]}"
    end
  end

  auto_updates true

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
