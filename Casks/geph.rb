cask "geph" do
  version "3.6.7"
  sha256 "0c2a2b0ba3b8ccf1acc66be891b3960716489fb4974e342a7dc9759552199d18"

  url "https://dl.geph.io/desktop-builds/geph-macos-#{version}.dmg"
  appcast "https://geph.io/"
  name "Geph"
  homepage "https://geph.io/"

  app "Geph.app"
end
