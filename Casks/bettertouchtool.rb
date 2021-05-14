cask "bettertouchtool" do
  version "3.562-1702"
  sha256 "27fb80b76d273b43f46540c7af415027c3221246d898dde20a9f12b608904eaf"

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
