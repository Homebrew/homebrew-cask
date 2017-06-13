cask 'mist' do
  version '0.8.10'
  sha256 '3f85562aabf4b6fff060ca67f61e3ff4223c9f3c1fdbb9969cba62f817876d8d'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Mist-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: '41be9ca825d4ef2c63f83035f42b9e4da799a91fa58226b26ba1ef3bd2822ec0'
  name 'Mist'
  homepage 'https://github.com/ethereum/mist'

  app 'Mist.app'
end
