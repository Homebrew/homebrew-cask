cask 'openinterminal-lite' do
  version '1.0.0'
  sha256 '66ab736ca0b98c97049ba549595197aeac36f2a7a796800ce68b370860ba1c0d'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal-Lite.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal-Lite'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInTerminal-Lite.app'
end
