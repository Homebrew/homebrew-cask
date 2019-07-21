cask 'openineditor-lite' do
  version '1.0.0'
  sha256 '7f7bd315ca23b49495aab8fe8635bb1306261375e7391c3bf17d3e5eb8f68a7a'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInEditor-Lite.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInEditor-Lite'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInEditor-Lite.app'
end
