cask 'fldigi' do
  version '4.1.04,4.3.7'
  sha256 '31d5f23f5898f7ca89d1e99f84c175e33ec90b572d7d2397fb3628d20c391111'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version.before_comma}_x86_64.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version.before_comma}.app"
  app "flarq-#{version.after_comma}.app"
end
