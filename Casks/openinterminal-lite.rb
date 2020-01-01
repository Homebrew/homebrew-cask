cask 'openinterminal-lite' do
  version '1.0.3'
  sha256 'db24d1ae5866abfc4a642c1563a9f6d8e38a9d9ad60db44ba74ce10f28c4ff5c'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal-Lite.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal-Lite'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInTerminal-Lite.app'
end
