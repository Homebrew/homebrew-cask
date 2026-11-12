cask "cursor" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "3.30.8,4a44c846d0b817fab060823f93c63ea2861ac192"
  sha256 arm:          "040d927d5e818064fbca7ac069032199e7b5963c38d2fbd80dcfa196148e86a3",
         intel:        "96cb4720b01b7f588c44213064f60e78a1b4e278a1f1481e8acfed3eb522b790",
         arm64_linux:  "94ce420764b5ad14f80f12be3b700241d2e85e1471f7ae4df7405bd363ac8596",
         x86_64_linux: "ec0af78225e8a69bc2adfcf2337c728d13a724e144362c60a16d259637d67c78"

  on_macos do
    url "https://downloads.cursor.com/production/#{version.csv.second}/#{os}/#{arch}/Cursor-darwin-#{arch}.#{url_end}"

    auto_updates true
    depends_on macos: :monterey

    app "Cursor.app"
    binary "#{appdir}/Cursor.app/Contents/Resources/app/bin/code", target: "cursor"

    zap trash: [
      "~/.cursor",
      "~/.cursor-tutor",
      "~/Library/Application Support/Caches/cursor-updater",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.todesktop.230313mzl4w4u92.sfl*",
      "~/Library/Application Support/Cursor",
      "~/Library/Caches/com.todesktop.230313mzl4w4u92",
      "~/Library/Caches/com.todesktop.230313mzl4w4u92.ShipIt",
      "~/Library/HTTPStorages/com.todesktop.230313mzl4w4u92",
      "~/Library/Logs/Cursor",
      "~/Library/Preferences/ByHost/com.todesktop.230313mzl4w4u92.ShipIt.*.plist",
      "~/Library/Preferences/com.todesktop.230313mzl4w4u92.plist",
      "~/Library/Saved Application State/com.todesktop.230313mzl4w4u92.savedState",
      "~/Library/Saved Application State/todesktop.com.ToDesktop-Installer.savedState",
    ]
  end
  on_linux do
    artifact_arch = on_arch_conditional arm: "aarch64", intel: "x86_64"

    url "https://downloads.cursor.com/production/#{version.csv.second}/#{os}/#{arch}/Cursor-#{version.csv.first}-#{artifact_arch}.#{url_end}"

    app_image "Cursor-#{version.csv.first}-#{artifact_arch}.AppImage", target: "Cursor.AppImage"

    zap trash: [
      "~/.config/Cursor",
      "~/.cursor",
      "~/.cursor-tutor",
    ]
  end

  name "Cursor"
  desc "Write, edit, and chat about your code with AI"
  homepage "https://www.cursor.com/"

  livecheck do
    url "https://api2.cursor.sh/updates/api/update/#{os}-#{arch}/cursor/0.0.0/stable"
    regex(%r{/production/(\h+)/}i)
    strategy :json do |json, regex|
      ver = json["name"] || json["version"] || json["productVersion"]
      next unless ver

      match = json["url"]&.match(regex)
      next if match.blank?

      "#{ver},#{match[1]}"
    end
  end
end
