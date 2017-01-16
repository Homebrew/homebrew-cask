cask 'mist' do
  version '0.8.8'
  sha256 '955b46059c6d65b5f2cdc824a642562eb7ec6442747fc1b5c4aafb6f42a7bad5'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Mist-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: '63081a0ff5fcb43ec5670b82812ab60465e292f0a1de4e3ae956e93e47071def'
  name 'Mist'
  homepage 'https://github.com/ethereum/mist'

  app 'Mist.app'
end
