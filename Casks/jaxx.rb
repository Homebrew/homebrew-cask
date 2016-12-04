cask 'jaxx' do
  version '1.1.7'
  sha256 'eaf1ffe03982d596d5d5ab570e9bc35ec5dd2dffa14b880aa58b1bdb7d71927e'

  url "https://jaxx.io/files/#{version}/Jaxx-v#{version}-osx.dmg"
  name 'Jaxx Blockchain Wallet'
  homepage 'https://jaxx.io/'

  app 'Jaxx.app'
end
