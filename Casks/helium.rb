cask :v1 => 'helium' do
  version :latest
  sha256 :no_check

  url 'http://download.clockworkmod.com/carbon/carbon-mac.zip'
  name 'Helium'
  name 'Carbon'
  homepage 'https://www.clockworkmod.com/carbon'
  license :gratis

  app 'Helium.app'

  uninstall :quit => 'com.koushikdutta.Helium'

  zap :delete => '~/Library/Saved Application State/com.koushikdutta.Helium.savedState'
end
