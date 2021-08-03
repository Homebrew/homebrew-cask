cask "bettertouchtool" do
  version "3.577-1720"
  sha256 "f8aeeab56c181203e3aa8726e186a021a8cb09978b7b82c824727b6d4c7bd785"

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
