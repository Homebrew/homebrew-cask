cask 'guppy' do
  version '0.3.0'
  sha256 '9e65c7df1c77dc78f469984e2bf06351254de72e98b20a12396536946116c80c'

  url "https://github.com/joshwcomeau/guppy/releases/download/v#{version}/Guppy-#{version}.dmg"
  appcast 'https://github.com/joshwcomeau/guppy/releases.atom'
  name 'Guppy'
  homepage 'https://github.com/joshwcomeau/guppy'

  app 'Guppy.app'

  zap trash: '~/Library/Application Support/Guppy'
end
