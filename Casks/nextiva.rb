cask 'nextiva' do
  version '21.3.0.1311'
  sha256 '1e5de7747db38e99cdc76e6b6194d24f44078d89eacc88843250a8fa13ce1466'

  url "https://dm.nextiva.com/dms/bc/pc/Nextiva_App.bc-uc.osx-#{version}.dmg"
  name 'Nextiva'
  homepage 'https://www.nextiva.com/support/nextiva-app-mac-setup.html'

  app 'Nextiva App.app'
end
