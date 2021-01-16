cask "bettertouchtool" do
  version "3.534,1673"
  sha256 "95ae987a4c93c70b0e8343d82ddf22231febc4676bd800e7a6e2d08afe8454f3"

  url "https://folivora.ai/releases/btt#{version.before_comma}-#{version.after_comma}.zip"
  name "BetterTouchTool"
  desc "Tool to customize input devices and automate computer systems"
  homepage "https://folivora.ai/"

  livecheck do
    url "https://updates.folivora.ai/appcast.xml?trial=1"
    strategy :sparkle
  end

  auto_updates true

  app "BetterTouchTool.app"

  zap trash: [
    "~/Library/Preferences/com.hegenberg.BetterTouchTool.plist",
    "~/Library/Application Support/BetterTouchTool",
  ]
end
