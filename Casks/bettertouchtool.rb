cask "bettertouchtool" do
  version "4.019,2236"
  sha256 "205f3267f55cbaa65531e1d44fcf6d966dcb7c67585a9e2dc2c5b934a9fab2de"

  url "https://folivora.ai/releases/btt#{version.csv.first}-#{version.csv.second}.zip"
  name "BetterTouchTool"
  desc "Tool to customize input devices and automate computer systems"
  homepage "https://folivora.ai/"

  livecheck do
    url "https://folivora.ai/releases/"
    regex(/btt(\d+(?:[._-]\d+)*)\.zip.*?(\d{4}-\d{2}-\d{2}\s+\d{2}:\d{2})/i)
    strategy :page_match do |page, regex|
      page.scan(regex).max_by { |match| Time.parse(match[1]) }&.first&.tr("-", ",")
    end
  end

  auto_updates true

  app "BetterTouchTool.app"

  uninstall quit: "com.hegenberg.BetterTouchTool"

  zap trash: [
    "~/Library/Application Support/BetterTouchTool",
    "~/Library/Preferences/com.hegenberg.BetterTouchTool.plist",
  ]
end
