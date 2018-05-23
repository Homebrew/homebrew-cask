cask 'prizmo' do
  version '3.5.0.1'
  sha256 '7e22f923312bd1dc862e5b9c8fa89f68f47d23f0e027a2b81e4aac871dbca6d5'

  url "https://www.creaceed.com/downloads/prizmo#{version.major}_#{version}.zip"
  appcast "https://www.creaceed.com/appcasts/prizmo#{version.major}.xml",
          checkpoint: '3f4dcf20f374e5fd3d9155c51b4fb5ad373c1e98cb2fb8dfc9c45758045fcb57'
  name 'Prizmo'
  homepage 'https://creaceed.com/prizmo'

  depends_on macos: '>= :yosemite'

  app 'Prizmo.app'
end
