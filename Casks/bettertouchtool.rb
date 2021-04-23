cask "bettertouchtool" do
  version "3.561-1701"
  sha256 "6f19467a71bec4ee992c61fe7fff762677c1d97856b6360f872aafc6f7c0a841"

  url "https://folivora.ai/releases/btt#{version}.zip"
  name "BetterTouchTool"
  desc "Tool to customize input devices and automate computer systems"
  homepage "https://folivora.ai/"

  livecheck do
    url "https://folivora.ai/releases/"
    strategy :page_match do
      page.scan(/btt(\d+(?:.\d+)*)\.zip.*?(\d{4}-\d{2}-\d{2})\s+\d{2}:\d{2})/i)
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
