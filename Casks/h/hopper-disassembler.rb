cask "hopper-disassembler" do
  version "5.19.1"
  sha256 "f3f90f21c57eaf0d763ad52853e6991dcfef52661ebf78a22a67e363f9d91aab"

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
