cask 'fldigi' do
  version '4.1.13,4.3.7'
  sha256 'a56d55812e18cb5cf4938a00bf13022759f317ed104a9eb7e1195553e3eca741'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version.before_comma}_x86_64.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version.before_comma}.app"
  app "flarq-#{version.after_comma}.app"
end
