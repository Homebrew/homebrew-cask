cask 'master-key' do
  version :latest
  sha256 :no_check

  url 'http://macinmind.com/MasterKey.dmg'
  appcast 'http://macinmind.com/pads/MasterKeyappcast.xml',
          :checkpoint => '680e469511621b3f9dfb3976d6ef7c5518a322423fc1b4bf402945508660cf7d'
  name 'Master Key'
  homepage 'http://macinmind.com/?area=app&app=masterkey&pg=info'
  license :commercial

  app 'Master Key.app'
end
