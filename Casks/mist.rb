cask 'mist' do
  version '0.8.9'
  sha256 '3d09306f8e53e315da73571d52adf15adfd4c30e43a8b4251099bc5f7aeda986'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Mist-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: 'f13dc4c770931e8f8805d584c8fb6f21461a5757b31e0f9fca50f07ac73a12f5'
  name 'Mist'
  homepage 'https://github.com/ethereum/mist'

  app 'Mist.app'
end
