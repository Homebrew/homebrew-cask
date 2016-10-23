cask 'armory' do
  version '0.95.0'
  sha256 '17e11d8aeb99feac42ad9fb89d202d5985a3fa031dd337de7f505918bee89b7a'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/goatpig/BitcoinArmory/releases/download/v#{version}/armory_#{version.major_minor}_osx.tar.gz"
  appcast 'https://github.com/goatpig/BitcoinArmory/releases.atom',
          checkpoint: '7bc57988822213c51e763ecc69fd0420cbc358380b44ebcb8fa2ce4e21d49b61'
  name 'Armory'
  homepage 'https://btcarmory.com/'

  app 'Armory.app'
end
