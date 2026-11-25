cask "cursor" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "3.32.4,0925c4b8226c56947c43f0b555fb98e187a7e029"
  sha256 arm:          "2d15a19927fe11ce177c2b67fa890ec43b2950f33b6be5dce770dc4a5c1364ae",
         intel:        "74ed9166ac008bce19cb5feb5e7eda8db4df9374f0e21d0f4d7ce9c9c423f104",
         arm64_linux:  "2d8a826a91c1037f8af9c3c3799fa02f41984427df01cc9d9697686cd48c1018",
         x86_64_linux: "4b0ed4ec5e064c11b0df42afce9957263ea44e482abb82d2f4d46813a0b1fb9f"

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
