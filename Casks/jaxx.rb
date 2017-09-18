cask 'jaxx' do
  version '1.2.30'
  sha256 'd271b813bb7444aa7e3a50b168dbb4148c52439d32736110114fc186bc698d47'

  url "https://jaxx.io/files/#{version}/Jaxx-#{version.dots_to_hyphens}.osx.dmg"
  name 'Jaxx Blockchain Wallet'
  homepage 'https://jaxx.io/'

  app 'Jaxx.app'
end
