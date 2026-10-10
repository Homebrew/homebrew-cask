cask "cursor" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "3.24.12,37b865941ccb31e2fc90c685157534efca87f964"
  sha256 arm:          "782929b6be6a9041c6d8491d34d6d59c2fa9a7a5935a87597d7d944a31eace5f",
         intel:        "e363470ea76da815da5d8c80c87b9666d710b4a7dda339208e09504ab259562f",
         arm64_linux:  "554b685abae6379f23beb58b86c18d1e7a00003380011a27ff6ca5d51b962c88",
         x86_64_linux: "409c506a864757318f639df68a8cd4ba39ad1e3518a267e2df3c35fd0f3bfaf8"

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
