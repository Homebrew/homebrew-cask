cask 'openinterminal-lite' do
  version '0.4.2'
  sha256 '25d9b7116c5a9d4b46c7a6e49145b03e01026f03bc6babe8b6e57187e50fd231'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal-Lite.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal-Lite'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInTerminal-Lite.app'
end
