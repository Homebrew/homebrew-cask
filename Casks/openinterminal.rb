cask 'openinterminal' do
  version '0.9.0'
  sha256 'd875a1f588745b5e7c8b1411bc9fa0b6dc003cb40ad1a2e62df6bd3923c80d9d'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInTerminal.app'
end
