cask 'armory' do
  version '0.94.1'
  sha256 'e1a977de35840d969bdf4039a0d5ddb466866ee793e9c178b0650ebbbf93af5c'

  url "https://github.com/goatpig/BitcoinArmory/releases/download/v#{version}/armory_#{version}_osx.tar.gz"
  name 'Armory'
  homepage 'https://github.com/goatpig/BitcoinArmory'
  license :oss

  app 'Armory.app'
end
