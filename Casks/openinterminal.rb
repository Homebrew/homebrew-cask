cask 'openinterminal' do
  version '0.10.0'
  sha256 '4cf9e6c07ad35b8db0d1dfda8f83fc0bc141c7c78c1bedc2094e4b555d670183'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInTerminal.app'
end
