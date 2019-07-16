cask 'openineditor-lite' do
  version '0.4.5'
  sha256 '3381f9468790d4d9c2e0f373923d8038ef7f059bb0d4a95056f9db7d69bb92b8'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInEditor-Lite.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInEditor-Lite'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInEditor-Lite.app'
end
