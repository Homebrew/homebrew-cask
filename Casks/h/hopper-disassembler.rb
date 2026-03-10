cask "hopper-disassembler" do
  version "6.2.0"
  sha256 "b9f6a652a83e78cd64f79bf6f976493d7c6c1a12737012b6e94981c01d4e9adf"

  url "https://www.hopperapp.com/downloader/public/Hopper-#{version}-demo.dmg",
      user_agent: :browser
  name "Hopper Disassembler"
  desc "Reverse engineering tool that lets you disassemble, decompile and debug your app"
  homepage "https://www.hopperapp.com/"

  livecheck do
    url "https://www.hopperapp.com/rss/changelog.xml",
        user_agent: :browser
    regex(/<title>\s*Version\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :monterey"

  app "Hopper Disassembler.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.cryptic-apps.hopper-web-4.sfl*",
    "~/Library/Application Support/Hopper Disassembler v4",
    "~/Library/Application Support/Hopper",
    "~/Library/Caches/com.apple.helpd/Generated/com.cryptic-apps.hopper-web-4.help*",
    "~/Library/Caches/com.cryptic-apps.hopper-web-4",
    "~/Library/HTTPStorages/com.cryptic-apps.hopper-web-4",
    "~/Library/Preferences/com.cryptic-apps.hopper-web-4.plist",
    "~/Library/Saved Application State/com.cryptic-apps.hopper-web-4.savedState",
  ]
end
