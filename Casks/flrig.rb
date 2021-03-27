cask "flrig" do
  version "1.3.54"
  sha256 "76e4fc5dd3f83dd4e91462ec706be0397be45a92f9f51fe3a7444b7c72c301c5"

  url "https://downloads.sourceforge.net/fldigi/fldigi/flrig-#{version.before_comma}_x86_64.dmg"
  appcast "https://sourceforge.net/projects/fldigi/rss?path=/flrig"
  name "flrig"
  desc "Ham radio rig control"
  homepage "https://sourceforge.net/projects/fldigi/files/flrig/"

  app "flrig-#{version.before_comma}.app"

  zap trash: "~/.flrig"
end
