cask 'nextiva' do
  version '22.5.0.623'
  sha256 '1b36c08b0a2b127cbb1ad501fb253d176bb1a479f28e01e974338d955f0a672e'

  url "https://dm.nextiva.com/dms/bc/pc/Nextiva_App.bc-uc.osx-#{version}.dmg"
  appcast 'https://www.nextiva.com/support/articles/nextiva-app-mac-setup.html'
  name 'Nextiva'
  homepage 'https://www.nextiva.com/support/articles/nextiva-app-mac-setup.html'

  app 'Nextiva App.app'
end
