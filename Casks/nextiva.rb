cask 'nextiva' do
  version '22.1.0.177'
  sha256 '6bbb0c84d5510113d85cc0192f329116fbd40bf0c59325a24c26aa4c26975757'

  url "https://dm.nextiva.com/dms/bc/pc/Nextiva_App.bc-uc.osx-#{version}.dmg"
  name 'Nextiva'
  homepage 'https://www.nextiva.com/support/articles/nextiva-app-mac-setup.html'

  app 'Nextiva App.app'
end
