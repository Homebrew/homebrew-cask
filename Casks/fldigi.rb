cask "fldigi" do
  version "4.1.17,4.3.7"
  sha256 "ef6a5eeb107cfcfb019dfcc915bc9e6c42de3f9d5d5ceb91d67b302fa513445f"

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version.before_comma}_x86_64.dmg"
  appcast "https://sourceforge.net/projects/fldigi/rss?path=/fldigi"
  name "fldigi"
  desc "Ham radio digital modem application"
  homepage "https://sourceforge.net/projects/fldigi/files/fldigi/"

  app "fldigi-#{version.before_comma}.app"
  app "flarq-#{version.after_comma}.app"

  zap trash: "~/.fldigi"
end
