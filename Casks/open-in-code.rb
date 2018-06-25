cask 'open-in-code' do
  version '1.0'
  sha256 'a473c247179c91621ef447f75f3103e1c9bc1459f6622b108e0c7bdd5b6f8367'

  url "https://github.com/sozercan/OpenInCode/releases/download/v#{version}/OpenInCode.app.zip"
  appcast 'https://github.com/sozercan/OpenInCode/releases.atom'
  name 'OpenInCode'
  homepage 'https://github.com/sozercan/OpenInCode'

  app 'Open in Code.app'
end
