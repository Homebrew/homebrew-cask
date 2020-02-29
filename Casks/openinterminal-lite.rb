cask 'openinterminal-lite' do
  version '1.1.0'
  sha256 '8efc42a960ee29385b73f2e31759fe207df5f7904a64e422e1d606bc9c18eb3a'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal-Lite.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal-Lite'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInTerminal-Lite.app'
end
