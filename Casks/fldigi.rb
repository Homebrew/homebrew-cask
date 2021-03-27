cask "fldigi" do
  version "4.1.18,4.3.7"
  sha256 "9bcf2843c67f1e3ce75eaeae6739fd14fb908bcdc1bd0e0b95b1aaf5ab8781de"

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version.before_comma}_x86_64.dmg"
  appcast "https://sourceforge.net/projects/fldigi/rss?path=/fldigi"
  name "fldigi"
  desc "Ham radio digital modem application"
  homepage "https://sourceforge.net/projects/fldigi/files/fldigi/"

  app "fldigi-#{version.before_comma}.app"
  app "flarq-#{version.after_comma}.app"

  zap trash: "~/.fldigi"
end
