cask 'mist' do
  version '0.8.10'
  sha256 '3f85562aabf4b6fff060ca67f61e3ff4223c9f3c1fdbb9969cba62f817876d8d'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Mist-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: 'f746379a4327fc4c202784bb6ce39e90b8e16bf955ad436d1b6b583051d5fc91'
  name 'Mist'
  homepage 'https://github.com/ethereum/mist'

  app 'Mist.app'
end
