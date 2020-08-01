cask "sitebulb" do
  version "3.7.1"
  sha256 "a5dfd7967a188d0820ae6f5521c0d5db18cbcfb5d993ad8d372752987aa1ca4d"

  url "https://downloads.sitebulb.com/#{version}/macOS/Sitebulb.dmg"
  appcast "https://sitebulb.com/download/"
  name "Sitebulb"
  homepage "https://sitebulb.com/"

  app "Sitebulb.app"
end
