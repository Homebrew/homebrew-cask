cask "hopper-disassembler" do
  version "6.0.2"
  sha256 "f0ea4de51d8e7423bb19aacaffae4d093f6e1598acae401ffab60a9cf0c16123"

  url "https://www.hopperapp.com/downloader/public/Hopper-#{version}-demo.dmg",
      user_agent: :fake
  name "Hopper Disassembler"
  desc "Reverse engineering tool that lets you disassemble, decompile and debug your app"
  homepage "https://www.hopperapp.com/"

  livecheck do
    url "https://www.hopperapp.com/rss/changelog.xml"
    regex(/<title>\s*Version\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Hopper Disassembler.app"

  zap trash: [
    "~/Library/Application Support/Hopper Disassembler v4",
    "~/Library/Application Support/Hopper",
    "~/Library/Caches/com.cryptic-apps.hopper-web-4",
    "~/Library/Preferences/com.cryptic-apps.hopper-web-4.plist",
    "~/Library/Saved Application State/com.cryptic-apps.hopper-web-4.savedState",
  ]
end
