cask 'nextiva' do
  version '21.6.2.44'
  sha256 '8808426421fb8894c1d22dffdd1e56508f0a308311b5beae0d6d6f1ac616f8fc'

  url "https://dm.nextiva.com/dms/bc/pc/Nextiva_App.bc-uc.osx-#{version}.dmg"
  name 'Nextiva'
  homepage 'https://www.nextiva.com/support/articles/nextiva-app-mac-setup.html'

  app 'Nextiva App.app'
end
