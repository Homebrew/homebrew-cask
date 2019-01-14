cask 'fman' do
  version '1.5.5'
  sha256 '32eedac32cc21399e7266eb1f0570b9485c1722e42aa0a0fd8d0e04eb979dd6c'

  url "https://fman.io/updates/mac/#{version}.zip"
  appcast 'https://fman.io/updates/Appcast.xml'
  name 'fman'
  homepage 'https://fman.io/'

  app 'fman.app'
end
