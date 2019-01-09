cask 'master-key' do
  version '6.0.0.3.48'
  sha256 '4c939a5c25f1d0ac90a1c98d919906d502871b1001726093400af5896989ec68'

  url "https://macinmind.com/MasterKey#{version.major}.dmg"
  appcast 'https://macinmind.com/pads/MasterKeyappcast.xml'
  name 'Master Key'
  homepage 'https://macinmind.com/?area=app&app=masterkey&pg=info'

  app 'Master Key.app'
end
