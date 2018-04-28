cask 'open-in-code' do
  version '1.0'
  sha256 'a473c247179c91621ef447f75f3103e1c9bc1459f6622b108e0c7bdd5b6f8367'

  url "https://github.com/sozercan/OpenInCode/releases/download/v#{version}/OpenInCode.app.zip"
  appcast 'https://github.com/sozercan/OpenInCode/releases.atom',
          checkpoint: '8293a9f1f5369eadcae2c4b03f125adfdd59b53695362202a3f25dd4a0520954'
  name 'OpenInCode'
  homepage 'https://github.com/sozercan/OpenInCode'

  app 'Open in Code.app'
end
