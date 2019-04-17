cask 'openinterminal' do
  version '0.2.0'
  sha256 '4f52091d45a4b7c437baa42e7099f210f7a505ad370612dc048308a092ba21f8'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInTerminal.app'
end
