cask "cursor" do
  arch arm: "arm64", intel: "x64"

  version "1.7.44,9d178a4a5589981b62546448bb32920a8219a5de"
  sha256 arm:   "4d73ee9b81d0c42ae084510cf75fd3557f1eb9bba0fe31c37a92bd048e06bb4c",
         intel: "175faf8b040251ea52063c58e0485b4ddbe598b0316ae32acf7d903f07d89d1d"

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
  depends_on macos: ">= :big_sur"

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
