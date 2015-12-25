cask 'freezer' do
  version :latest
  sha256 :no_check

  url 'https://download.mrgeckosmedia.com/Freezer.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/Freezer',
          :sha256 => '980cff11b1f696961942e3f062456b94d36d38e1a0ed84981b530c0744ea2889'
  name 'Freezer'
  homepage 'https://mrgeckosmedia.com/applications/info/Freezer'
  license :gratis

  app 'Freezer/Freezer.app'
end
