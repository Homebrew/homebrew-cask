cask 'ganache' do
  version '2.0.3'
  sha256 '3c5271971c8f41f93aaa68c7e67e7a0a1854052e27b990fe379d9a099fd27808'

  # github.com/trufflesuite/ganache was verified as official when first introduced to the cask
  url "https://github.com/trufflesuite/ganache/releases/download/v#{version}/Ganache-#{version}.dmg"
  appcast 'https://github.com/trufflesuite/ganache/releases.atom'
  name 'Ganache'
  homepage 'https://truffleframework.com/ganache/'

  app 'Ganache.app'
end
