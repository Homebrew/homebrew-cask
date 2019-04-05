cask 'master-key' do
  version '6.1.1.3.60'
  sha256 '1c6e6366af24c631fadbb9ece2045313c28ae8ffb9798fc1052c3e00b28288ff'

  url "https://macinmind.com/MasterKey#{version.major}.dmg"
  appcast 'https://macinmind.com/pads/MasterKeyappcast2.xml'
  name 'Master Key'
  homepage 'https://macinmind.com/?area=app&app=masterkey&pg=info'

  app 'Master Key.app'
end
