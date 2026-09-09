cask "cursor" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "3.19.19,6496ea8a068aebfcd21990e70ff522e9abf10c8c"
  sha256 arm:          "cd329fcbc5c1fa2fc66ddc911beebbc9d594e3ff8677f50ccd4757abda0a7c67",
         intel:        "5d7e8f2f60c3a8dd2f5bec70fcb25cdf53e5ff42ab76bb2185104ced032b561d",
         arm64_linux:  "952b0e7cca2365fa1c993aa0055a8317fa83445db2d318859605e153723ed92e",
         x86_64_linux: "989ea04f86fa639dc543b6d041b14b5bf13a322ac493547af72cb66d676521de"

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
