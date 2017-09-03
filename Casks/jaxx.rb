cask 'jaxx' do
  version '1.2.29'
  sha256 'c2d91cc2b2fdf117576e3059d67fa770cea29198b792d778f303f009ec74b93b'

  url "https://jaxx.io/files/#{version}/Jaxx-#{version.dots_to_hyphens}.osx.dmg"
  name 'Jaxx Blockchain Wallet'
  homepage 'https://jaxx.io/'

  app 'Jaxx.app'
end
