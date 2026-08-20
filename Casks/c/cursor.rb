cask "cursor" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "3.17.8,2fdd31c9f33f7fbe501f2d57772dc5bf64b63621"
  sha256 arm:          "18bf12490fca6c05933d30e26dab1f7059b3a39bff8b24f6ba4657670d65f03f",
         intel:        "aa7c173682a6cb9c9d8dc4d42582ea4c264b5d3dca226cb556cd340853d0c0ea",
         arm64_linux:  "90f1c457c1964ac785cf9f900a6746fb7fa29c466a2bf5f33f35826c6ff2b09f",
         x86_64_linux: "a3384c894b7786baee6097dfd70323d0df3179bee1a0105672f3df87a030bee7"

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
