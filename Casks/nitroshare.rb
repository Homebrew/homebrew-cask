cask 'nitroshare' do
  version '0.3.0'
  sha256 '159f9ea92aff66f6123df8f0214c9c2e39b1ca347ce005efc2838ff6cde4b759'

  url "https://launchpad.net/nitroshare/0.3/#{version}/+download/nitroshare-#{version}-osx.dmg"
  name 'NitroShare'
  homepage 'https://launchpad.net/nitroshare'
  license :gpl

  app 'NitroShare.app'
end
