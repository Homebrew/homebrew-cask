cask 'mist' do
  version '0.8.9'
  sha256 '3d09306f8e53e315da73571d52adf15adfd4c30e43a8b4251099bc5f7aeda986'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Mist-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: 'f3d170f13cc1de0500b446c9d9cafc59279cd4f9d4214dc71b422191c725641d'
  name 'Mist'
  homepage 'https://github.com/ethereum/mist'

  app 'Mist.app'
end
