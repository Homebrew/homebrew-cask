cask 'openinterminal-lite' do
  version '0.4.4'
  sha256 'd9630dcb803eca0ec9a000e60b5252a10a9d5d56d79baf4335012177e1cdbca8'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInTerminal-Lite.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInTerminal-Lite'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInTerminal-Lite.app'
end
