cask "bitbar" do
  version "1.9.2"
  sha256 "9e317d58143f544ab3b2b35e4d0ef2f11b9578fe6872cec1415da961acb1aee4"

  url "https://github.com/matryer/bitbar/releases/download/v#{version}/BitBar-v#{version}.zip"
  appcast "https://github.com/matryer/bitbar/releases.atom"
  name "BitBar"
  desc "Utility to display the output from any script or program in the menu bar"
  homepage "https://github.com/matryer/bitbar/"

  app "BitBar.app"

  zap trash: [
    "~/Library/BitBar Plugins",
    "~/Library/Caches/com.matryer.BitBar",
    "~/Library/Preferences/com.matryer.BitBar.plist",
  ]
end
