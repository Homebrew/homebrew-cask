cask :v1 => 'master-key' do
  version :latest
  sha256 :no_check

  url 'http://macinmind.com/MasterKey.dmg'
  appcast 'http://macinmind.com/pads/MasterKeyappcast.xml'
  name 'Master Key'
  homepage 'http://macinmind.com/?area=app&app=masterkey&pg=info'
  license :commercial

  app 'Master Key.app'
end
