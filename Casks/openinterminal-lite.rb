cask 'openinterminal-lite' do
  version '1.0.2'
  sha256 'd805002d08cb4516c2e8b02c62e582f5a0db31259ab6a9bc75e5e09aac2d90d9'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal-Lite.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal-Lite'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInTerminal-Lite.app'
end
