cask "rubick2" do
  version "2.0.4"
  sha256 "aa0a705366f2d176d281dac1f36545355724c22e899e91eb22d006ae685ee8d2"

  url "https://github.com/rubickCenter/rubick/releases/download/v#{version}/rubick2-#{version}.dmg",
      verified: "github.com/rubickCenter/rubick/"
  name "rubick2"
  desc "🔧 Electron based open source toolbox, free integration of rich plug-ins"
  homepage "https://rubickcenter.github.io/rubick/"

  app "rubick2.app"

  zap trash: [
    "~/rubick",
    "~/Library/Application Support/rubick",
    "~/Library/Preferences/com.muwoo.rubick.plist",
  ]
end
