cask 'openinterminal-lite' do
  version '0.4.3'
  sha256 'fe2d2e5892632b537118cd8bf46a0d84df137a52c2f795c9492e5d6c2a181661'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal-Lite.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal-Lite'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInTerminal-Lite.app'
end
