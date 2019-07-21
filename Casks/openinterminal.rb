cask 'openinterminal' do
  version '2.0.1'
  sha256 '7027aa6a6670c22efa777b5eb50083ab6406aae9dce23ef13f483282c774c55a'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInTerminal.app'
end
