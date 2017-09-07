cask 'mist' do
  version '0.9.0'
  sha256 'daf781fb64312400c3c85a1899f989a42a568d1b527c318b78d83084d31c4664'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Mist-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: '2d21d2003f91bff6b6eb3ecc232b6f675faca97e224bb318cc3a8595916f2ba2'
  name 'Mist'
  homepage 'https://github.com/ethereum/mist'

  app 'Mist.app'
end
