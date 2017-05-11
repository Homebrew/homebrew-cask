cask 'fldigi' do
  version '4.0.4'
  sha256 '0a9399fe18aa730a475e312e81329c8379f9abc5320da3a52b29b560ae144a8f'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi',
          checkpoint: 'bf711ab3dc2e996d846fc5222ba9e8d9abedc9443be4626013f626dc412faf0f'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.6.app'
end
