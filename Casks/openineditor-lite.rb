cask 'openineditor-lite' do
  version '1.0.3'
  sha256 '7f38b38edcdf76d9dd0c3818a5f53b48c6df2a1b06f685b7cf06ef6d39964f87'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInEditor-Lite.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInEditor-Lite'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInEditor-Lite.app'
end
