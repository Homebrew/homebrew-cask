cask 'fldigi' do
  version '4.0.17'
  sha256 '1508c2c8357739417a4917321f871bf388850af009dddb7f9fc08481d9136e41'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_macos.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.7.app'
end
