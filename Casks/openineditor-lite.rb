cask 'openineditor-lite' do
  version '1.1.0'
  sha256 'a3f65725b801d2814e0e14568f1da99c6e6e3c63b13e70fa96479fc10393b00c'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInEditor-Lite.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInEditor-Lite'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInEditor-Lite.app'
end
