cask "bettertouchtool" do
  version "3.578-1721"
  sha256 "ddf642c6f2c760bfccb285abd8ad2700ed73639be050387737787947a532635c"

  url "https://folivora.ai/releases/btt#{version}.zip"
  name "BetterTouchTool"
  desc "Tool to customize input devices and automate computer systems"
  homepage "https://folivora.ai/"

  livecheck do
    url "https://folivora.ai/releases/"
    strategy :page_match do |page|
      page.scan(/btt(\d+(?:.\d+)*)\.zip.*?(\d{4}-\d{2}-\d{2}\s+\d{2}:\d{2})/i)
          .max_by { |(_, time)| Time.parse(time) }
          .first
    end
  end

  auto_updates true

  app "BetterTouchTool.app"

  zap trash: [
    "~/Library/Preferences/com.hegenberg.BetterTouchTool.plist",
    "~/Library/Application Support/BetterTouchTool",
  ]
end
