cask "rubick" do
  version "2.0.4"
  sha256 "aa0a705366f2d176d281dac1f36545355724c22e899e91eb22d006ae685ee8d2"

  url "https://github.com/rubickCenter/rubick/releases/download/v#{version}/rubick#{version.major}-#{version}.dmg",
      verified: "github.com/rubickCenter/rubick/"
  name "Rubick"
  desc "Electron-based plug-in toolbox"
  homepage "https://rubickcenter.github.io/rubick/"

  app "rubick#{version.major}.app"

  zap trash: [
    "~/rubick",
    "~/Library/Application Support/rubick",
    "~/Library/Preferences/com.muwoo.rubick.plist",
  ]
end
