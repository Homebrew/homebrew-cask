cask 'modmove' do
  version '1.0.1'
  sha256 'e26b49608d57659e4a7a22b3e48a10d6636d79022240ea555357ef9ff323f0c9'

  url "https://github.com/keith/modmove/releases/download/#{version}/ModMove.app.zip"
  appcast 'https://github.com/keith/modmove/releases.atom'
  name 'ModMove'
  homepage 'https://github.com/keith/modmove'

  accessibility_access true

  app 'ModMove.app'
end
