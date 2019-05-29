cask 'nextiva' do
  version '22.6.3.41'
  sha256 'b78c45fd3cbd45912eda1dd87e311a3c086e385828471d300d92b2a14fd8c5a9'

  url "https://dm.nextiva.com/dms/bc/pc/Nextiva_App.bc-uc.osx-#{version}.dmg"
  appcast 'https://www.nextiva.com/support/articles/nextiva-app-mac-setup.html'
  name 'Nextiva'
  homepage 'https://www.nextiva.com/support/articles/nextiva-app-mac-setup.html'

  app 'Nextiva App.app'
end
