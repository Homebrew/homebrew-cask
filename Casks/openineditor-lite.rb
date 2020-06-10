cask 'openineditor-lite' do
  version '1.1.2'
  sha256 'b804f7c7c80d68fd75c44257ae1d83954d0e53d4fe7d81ba1d51297e48c28b7a'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInEditor-Lite.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInEditor-Lite'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInEditor-Lite.app'
end
