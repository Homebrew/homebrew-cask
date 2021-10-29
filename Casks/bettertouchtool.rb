cask "bettertouchtool" do
  version "3.605-1753"
  sha256 "b7c6dfef26b76c285beb64cd2e61dbfe7f2c0a97bbb95c2fd5ff2e525410e9de"

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
    "~/Library/Application Support/BetterTouchTool",
    "~/Library/Preferences/com.hegenberg.BetterTouchTool.plist",
  ]
end
