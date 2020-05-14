cask 'fldigi' do
  version '4.1.12,4.3.7'
  sha256 '050383ad0ffd5dcd0436305df6b3283c1ba43a26938eeb8a1be7bc5e2603e91d'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version.before_comma}_x86_64.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version.before_comma}.app"
  app "flarq-#{version.after_comma}.app"
end
