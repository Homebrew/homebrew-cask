cask 'helium' do
  version :latest
  sha256 :no_check

  url 'http://download.clockworkmod.com/carbon/carbon-mac.zip'
  name 'Helium'
  homepage 'https://www.clockworkmod.com/carbon'

  app 'Helium.app'

  uninstall quit: 'com.koushikdutta.Helium'

  zap delete: '~/Library/Saved Application State/com.koushikdutta.Helium.savedState'
end
