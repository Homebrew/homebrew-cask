cask 'openinterminal-lite' do
  version '0.4.1'
  sha256 '1c78a501c4fe70bef3194a893b0b5683a470a2c79ab083f5c66f2240860b4bc8'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal-Lite.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal-Lite'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInTerminal-Lite.app'
end
