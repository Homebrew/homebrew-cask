cask "fldigi" do
  version "4.1.16,4.3.7"
  sha256 "9aefd9935a335c796c6dd8c64430ae5599f86d74564b49f2d4c3944e364a502a"

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version.before_comma}_x86_64.dmg"
  appcast "https://sourceforge.net/projects/fldigi/rss?path=/fldigi"
  name "fldigi"
  desc "Ham radio digital modem application"
  homepage "https://sourceforge.net/projects/fldigi/files/fldigi/"

  app "fldigi-#{version.before_comma}.app"
  app "flarq-#{version.after_comma}.app"

  zap trash: "~/.fldigi"
end
