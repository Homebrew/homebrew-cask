cask 'openineditor-lite' do
  version '1.0.1'
  sha256 '885c3662191b7950d176d240818f2b35f3bc63693f1b659ccb6a8aafca8c9fc6'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInEditor-Lite.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInEditor-Lite'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInEditor-Lite.app'
end
