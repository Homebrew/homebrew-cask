cask "flrig" do
  version "1.3.53"
  sha256 "b39c156d4cdbfe0c26fbb2693957f8856c6b8ddfbc9ba88f2b58c1337d567815"

  url "https://downloads.sourceforge.net/fldigi/fldigi/flrig-#{version.before_comma}_x86_64.dmg"
  appcast "https://sourceforge.net/projects/fldigi/rss?path=/flrig"
  name "flrig"
  desc "Ham radio rig control"
  homepage "https://sourceforge.net/projects/fldigi/files/flrig/"

  app "flrig-#{version.before_comma}.app"

  zap trash: "~/.flrig"
end
