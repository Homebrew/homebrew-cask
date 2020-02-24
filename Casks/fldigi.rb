cask 'fldigi' do
  version '4.1.09,4.3.7'
  sha256 '99e57120d2d54de5ee3c6cd3b6b76fd9f13d5feb1e5842d50ae6e2d2392d24dc'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version.before_comma}_x86_64.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version.before_comma}.app"
  app "flarq-#{version.after_comma}.app"
end
