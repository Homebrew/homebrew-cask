cask 'cinch' do
  version '1.2.2'
  sha256 'c8ff663bdc03329446db3ada84fa32aa0d382c7dbcd18a683712d1304ed914f1'

  url "https://www.irradiatedsoftware.com/downloads/Cinch_#{version}.zip"
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/cinch.php',
          checkpoint: '18e45489bf4ca68eaadfea51bc6ea38580ed00ac260bede0dd7b282778bf7a22'
  name 'Cinch'
  homepage 'https://www.irradiatedsoftware.com/cinch/'

  app 'Cinch.app'
end
