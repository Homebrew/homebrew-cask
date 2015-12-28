cask 'master-key' do
  version :latest
  sha256 :no_check

  url 'http://macinmind.com/MasterKey.dmg'
  appcast 'http://macinmind.com/pads/MasterKeyappcast.xml',
          :sha256 => 'e4a1622410ab55f90cef0b98baa6811978494e93eec1d1022dc0ded8858e4832'
  name 'Master Key'
  homepage 'http://macinmind.com/?area=app&app=masterkey&pg=info'
  license :commercial

  app 'Master Key.app'
end
