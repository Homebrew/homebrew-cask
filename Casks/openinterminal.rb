cask 'openinterminal' do
  version '0.10.3'
  sha256 '4c02f9330d32c6348dc7a307ddce2a3c1b797685c121ec33c511018b33b44315'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInTerminal.app'
end
