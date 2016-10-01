cask 'prizmo' do
  version '3.1.13'
  sha256 'c6edffd466ecfe6fd59ecb6bb855fca6426c22cb38485f390652a4a81f1bfb3b'

  url "https://www.creaceed.com/downloads/prizmo#{version.major}_#{version}.zip"
  appcast 'https://www.creaceed.com/appcasts/prizmo3.xml',
          checkpoint: '2cf75bb8852c58cb3052c25a4e14d10aba836be5ce12d6b263087b9dee0be22d'
  name 'Prizmo'
  homepage 'https://www.creaceed.com/prizmo'
  license :freemium

  depends_on macos: '>= :yosemite'

  app 'Prizmo.app'
end
