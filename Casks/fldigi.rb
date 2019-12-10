cask 'fldigi' do
  version '4.1.08,4.3.7'
  sha256 '032272da952c5c3882e9c34c6b1a4a8cf1af16a3d7eae76a0ff31ef777441107'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version.before_comma}_x86_64.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version.before_comma}.app"
  app "flarq-#{version.after_comma}.app"
end
