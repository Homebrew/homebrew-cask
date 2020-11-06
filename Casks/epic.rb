cask "epic" do
  version "86.0.4240.111"
  sha256 "74f3254e1d3a352c55e71992932ca56051e6331aff6baa6e9df9b05c80deba29"

  url "https://cdn.epicbrowser.com/mac2/epic_#{version}.dmg"
  appcast "https://epicbrowser.com/thank_you.php"
  name "Epic Privacy Browser"
  desc "Private, secure web browser"
  homepage "https://www.epicbrowser.com/"

  app "Epic.app"
end
