cask 'openinterminal' do
  version '0.9.1'
  sha256 '246427c3099c8ab4cbac4cebee8a56555f218f2f87c1afc6a896ed49240caeff'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInTerminal.app'
end
