cask 'openinterminal-lite' do
  version '1.0.1'
  sha256 '0a1ab89880251352770a5d5795271dcb44976f251c57b90b20d7fcf4cb4e4190'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal-Lite.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal-Lite'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInTerminal-Lite.app'
end
