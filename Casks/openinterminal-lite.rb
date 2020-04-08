cask 'openinterminal-lite' do
  version '1.1.1'
  sha256 'c7722149a462692adc9ca883961edd7754c79e89debcb1ded3763bc54d5cb3eb'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal-Lite.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal-Lite'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInTerminal-Lite.app'
end
