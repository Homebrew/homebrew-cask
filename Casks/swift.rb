cask 'swift' do
  version '3.0'
  sha256 '8849a59f0875f2d3e2c8a99a171b4f0177f98ecc2241deac92509056858f5024'

  url "https://swift.im/downloads/releases/swift-#{version}/Swift-#{version}.dmg"
  name 'Swift XMPP Client'
  homepage 'https://swift.im/'

  app 'Swift.app'
end
