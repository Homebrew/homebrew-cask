cask "cursor" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "3.27.12,df132ffba90dfc15a12e6b8f020ba4e5d026c4be"
  sha256 arm:          "09437a9456d13391e5c847169330393114d0df0d20b93f5aea032feab4bca588",
         intel:        "e3d2a87e65302b809018a2e6469e090fdb5eb8f789123927746da04d946ce405",
         arm64_linux:  "4b6653be15c42a54613011b863be1e4ff8095ad3816e796c9d8f54c43afddd99",
         x86_64_linux: "87c14ad233f3a697a41dfead8fcc4be403dd3a3b3983b4fb91c9d99fdaa0cbbd"

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
