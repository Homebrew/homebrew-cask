cask "flrig" do
  version "1.3.52"
  sha256 "2cb4e59e92f27fb32c9514ad2cc51f5430d9fa1cfb61023ba8a330dbaf176b89"

  url "https://downloads.sourceforge.net/fldigi/fldigi/flrig-#{version.before_comma}_x86_64.dmg"
  appcast "https://sourceforge.net/projects/fldigi/rss?path=/flrig"
  name "flrig"
  desc "Ham radio rig control"
  homepage "https://sourceforge.net/projects/fldigi/files/flrig/"

  app "flrig-#{version.before_comma}.app"
end
