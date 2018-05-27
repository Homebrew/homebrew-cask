cask 'master-key' do
  version '6.0.0.3.48'
  sha256 'b64b43a0ca30995cff4c604cdf3432d1b7002148d219461da88257cb046d8788'

  url "https://macinmind.com/MasterKey#{version.major}.dmg"
  appcast 'https://macinmind.com/pads/MasterKeyappcast.xml',
          checkpoint: '2251ed519e1ddcae599b13755e42a2be4dd9c030806294e616b803f50c826e74'
  name 'Master Key'
  homepage 'https://macinmind.com/?area=app&app=masterkey&pg=info'

  app 'Master Key.app'
end
