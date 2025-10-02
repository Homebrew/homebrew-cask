cask "hopper-disassembler" do
  version "6.0.6"
  sha256 "1a5ee3002d86a441f315613811d340ac762c240e6f64847e3b1346c8a562773f"

  url "https://www.hopperapp.com/downloader/public/Hopper-#{version}-demo.dmg",
      user_agent: :fake
  name "Hopper Disassembler"
  desc "Reverse engineering tool that lets you disassemble, decompile and debug your app"
  homepage "https://www.hopperapp.com/"

  livecheck do
    url "https://www.hopperapp.com/rss/changelog.xml"
    regex(/<title>\s*Version\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :monterey"

  app "Hopper Disassembler.app"

  zap trash: [
    "~/Library/Application Support/Hopper Disassembler v4",
    "~/Library/Application Support/Hopper",
    "~/Library/Caches/com.cryptic-apps.hopper-web-4",
    "~/Library/Preferences/com.cryptic-apps.hopper-web-4.plist",
    "~/Library/Saved Application State/com.cryptic-apps.hopper-web-4.savedState",
  ]
end
