cask 'fldigi' do
  version '4.1.04.01,4.3.7'
  sha256 '4016adb4fefdf15aee555f5b4a6e7a948b6a646b3a8f8a798f697d833d378fe5'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version.before_comma}_x86_64.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version.before_comma}.app"
  app "flarq-#{version.after_comma}.app"
end
