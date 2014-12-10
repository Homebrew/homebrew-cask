cask :v1 => 'nitroshare' do
  version '0.2'
  sha256 '9f208d4b86ca13c4136265fa4a4693c7ef9ba9f0d6a0a84966cfd5f9934abe12'

  url "https://launchpad.net/nitroshare/#{version}/#{version}/+download/nitroshare_#{version}.app.dmg"
  homepage 'https://launchpad.net/nitroshare'
  license :unknown    # todo: improve this machine-generated value

  app 'NitroShare.app'
end
