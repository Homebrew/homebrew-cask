cask 'openinterminal-lite' do
  version '1.1.3'
  sha256 '878d79530a0277cb4c2b23448e2d2baade5b07baae0e3e651d203624c65aade2'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal-Lite.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal-Lite'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInTerminal-Lite.app'
end
