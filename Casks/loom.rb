cask :v1 => 'loom' do
  version :latest
  sha256 :no_check

  url 'https://loom.com/download/loom-mac.dmg'
  appcast 'http://www.loom.com/download/macupdate_1.1.xml'
  homepage 'http://loom.com/'
  license :unknown

  app 'Loom.app'
end
