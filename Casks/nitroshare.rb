cask :v1 => 'nitroshare' do
  version '0.3.0'
  sha256 '9f208d4b86ca13c4136265fa4a4693c7ef9ba9f0d6a0a84966cfd5f9934abe12'

  url "https://launchpad.net/nitroshare/0.3/#{version}/+download/nitroshare-#{version}-osx.dmg"
  name 'NitroShare'
  homepage 'https://launchpad.net/nitroshare'
  license :gpl

  app 'NitroShare.app'
end
