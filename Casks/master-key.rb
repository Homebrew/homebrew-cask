cask 'master-key' do
  version :latest
  sha256 :no_check

  url 'http://macinmind.com/MasterKey.dmg'
  appcast 'http://macinmind.com/pads/MasterKeyappcast.xml',
          :checkpoint => 'd7250593c7559dea200431ab10f69cef39e617914ae8f157ec162d364cfb66c1'
  name 'Master Key'
  homepage 'http://macinmind.com/?area=app&app=masterkey&pg=info'
  license :commercial

  app 'Master Key.app'
end
