cask 'openinterminal' do
  version '0.10.2'
  sha256 'f21b167961031dd9ae6f431a23427ba2dceb37b8b3313ab26f24ce90bd8db1f8'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInTerminal.app'
end
