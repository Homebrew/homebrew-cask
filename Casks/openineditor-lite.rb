cask 'openineditor-lite' do
  version '1.0.2'
  sha256 '81249f91bc1e8297eb33b0231c0c6f507c33cb10e085306bf9ad6d2e583c2c3e'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInEditor-Lite.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInEditor-Lite'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInEditor-Lite.app'
end
