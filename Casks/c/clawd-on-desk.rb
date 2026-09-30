cask "clawd-on-desk" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "1.2.0"
  sha256 arm:          "646be75eae1df9a19f2afc4e63fddd09f31d7f5c8bf4a45ced3a663bd15a1a25",
         intel:        "c55def30a4cdcea5a1565b67d0094c187065ea8125e454eb675ecc73d12c8822",
         x86_64_linux: "01f7148138d51b6fd4f16a4846e7ce3ba7c629a295f3baa991bcaed9088f7da0"

  on_macos do
    depends_on macos: :monterey

    app "Clawd on Desk.app"

    zap trash: [
      "~/Library/Application Support/clawd-on-desk",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.clawd.on-desk.sfl*",
      "~/Library/Caches/com.clawd.on-desk",
      "~/Library/HTTPStorages/com.clawd.on-desk",
      "~/Library/Logs/clawd-on-desk",
      "~/Library/Preferences/com.clawd.on-desk.plist",
      "~/Library/Saved Application State/com.clawd.on-desk.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Clawd-on-Desk-#{version}-#{arch}.AppImage", target: "Clawd on Desk.AppImage"
  end

  url "https://github.com/rullerzhou-afk/clawd-on-desk/releases/download/v#{version}/Clawd-on-Desk-#{version}-#{arch}.#{os}"
  name "Clawd on Desk"
  desc "Desktop pet that reacts to AI coding agents"
  homepage "https://github.com/rullerzhou-afk/clawd-on-desk"

  livecheck do
    url :url
    strategy :github_latest
  end
end
