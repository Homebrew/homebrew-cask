cask 'nextiva' do
  version '21.5.0.813'
  sha256 '84d566d2eb996f74a76041310165e6dbad5e6c00aa981199e0f532bc03ebcd98'

  url "https://dm.nextiva.com/dms/bc/pc/Nextiva_App.bc-uc.osx-#{version}.dmg"
  name 'Nextiva'
  homepage 'https://www.nextiva.com/support/articles/nextiva-app-mac-setup.html'

  app 'Nextiva App.app'
end
