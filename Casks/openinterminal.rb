cask 'openinterminal' do
  version '0.10.1'
  sha256 '08cbdab28ade7d7541487fc7779a1e6f72851ac485ebac4b8ba8f4002e1766ef'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInTerminal.app'
end
