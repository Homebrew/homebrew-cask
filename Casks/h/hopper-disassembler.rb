cask "hopper-disassembler" do
  version "5.19.3"
  sha256 "c53892ef7032bc770621dbbe4f7a57f5cc3f7402050f749fa26fb9e350075bc1"

  url "https://www.hopperapp.com/downloader/hopperv4/Hopper-#{version}-demo.dmg",
      user_agent: :fake
  name "Hopper Disassembler"
  desc "Reverse engineering tool that lets you disassemble, decompile and debug your app"
  homepage "https://www.hopperapp.com/"

  livecheck do
    url "https://www.hopperapp.com/rss/changelog.xml"
    regex(/Version\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Hopper Disassembler v4.app"

  zap trash: [
    "~/Library/Application Support/Hopper Disassembler v4",
    "~/Library/Application Support/Hopper",
    "~/Library/Caches/com.cryptic-apps.hopper-web-4",
    "~/Library/Preferences/com.cryptic-apps.hopper-web-4.plist",
    "~/Library/Saved Application State/com.cryptic-apps.hopper-web-4.savedState",
  ]
end
