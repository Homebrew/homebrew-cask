cask "bettertouchtool" do
  version "3.727,1868"
  sha256 "86e21166d4ca249d4d2938ceddc308ec2daa3be898668149b9f1c8b670c1608a"

  url "https://folivora.ai/releases/btt#{version.csv.first}-#{version.csv.second}.zip"
  name "BetterTouchTool"
  desc "Tool to customize input devices and automate computer systems"
  homepage "https://folivora.ai/"

  livecheck do
    url "https://folivora.ai/releases/"
    strategy :page_match do |page|
      page.scan(/btt(\d+(?:[._-]\d+)*)\.zip.*?(\d{4}-\d{2}-\d{2}\s+\d{2}:\d{2})/i)
          .max_by { |(_, time)| Time.parse(time) }
          .first
          .tr("-", ",")
    end
  end

  auto_updates true

  app "BetterTouchTool.app"

  zap trash: [
    "~/Library/Application Support/BetterTouchTool",
    "~/Library/Preferences/com.hegenberg.BetterTouchTool.plist",
  ]
end
