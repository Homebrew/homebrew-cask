cask "alternote" do
  version "1.0.18,1018"
  sha256 "b1a3c0d311b0633bae1a327d393c61a82bf21e2a0363109ef984e8f1c99549ff"

  url "http://alternoteapp.com/assets/downloads/Alternote#{version.after_comma}.zip"
  appcast "http://alternoteapp.com/assets/appcast.xml"
  name "Alternote"
  homepage "http://alternoteapp.com/"

  app "Alternote.app"

  uninstall quit: "com.Alternote"
end
