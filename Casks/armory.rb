cask 'armory' do
  version '0.94.1'
  sha256 'e1a977de35840d969bdf4039a0d5ddb466866ee793e9c178b0650ebbbf93af5c'

  url "https://github.com/goatpig/BitcoinArmory/releases/download/v#{version}/armory_#{version}_osx.tar.gz"
  appcast 'https://github.com/goatpig/BitcoinArmory/releases.atom',
          checkpoint: '50b50e2071c2cb4f05c0564cc0019d7fdd621ccc225953cdf4c1d93e40abba12'
  name 'Armory'
  homepage 'https://github.com/goatpig/BitcoinArmory'
  license :oss

  app 'Armory.app'
end
