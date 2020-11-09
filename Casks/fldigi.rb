cask "fldigi" do
  version "4.1.15,4.3.7"
  sha256 "d4d6e158192c614ca1c0b940fe85847149cf278d2ff200202eff67c3f07f7088"

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version.before_comma}_x86_64.dmg"
  appcast "https://sourceforge.net/projects/fldigi/rss?path=/fldigi"
  name "fldigi"
  desc "Ham radio digital modem application"
  homepage "https://sourceforge.net/projects/fldigi/files/fldigi/"

  app "fldigi-#{version.before_comma}.app"
  app "flarq-#{version.after_comma}.app"
end
