cask "cursor" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "3.32.10,0d3b96e46ce65af82ed74bc6f14883b33e1a0597"
  sha256 arm:          "2b63ad0736948f2f055c9d7e0e5dcef675292f3b64a385ef179a7ba8d29856d7",
         intel:        "b6310c7c98273cbfbb20fb606290c6a164bc2b150fb16f1c684d85585f129b86",
         arm64_linux:  "5eecf55ac5770855c495c8fcaf359bd47ba4951046846c26381d93febe1ab8e4",
         x86_64_linux: "498d306a78afaa07147b188e86ce11a942d0988471c914f27ccce928d8fb888a"

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
