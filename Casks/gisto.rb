cask 'gisto' do
  version '1.12.7'
  sha256 '368ed5c8350cff2a40ee680cfef8f2bca6f550a125e739150a91dce12404c78c'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
