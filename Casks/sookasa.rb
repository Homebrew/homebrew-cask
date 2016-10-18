cask 'sookasa' do
  version '3.19.15'
  sha256 '5b68bbbab8bad695df697431fee8ce5d05435bdd686e4680ff56355a60dd0e00'

  # d2rs8uj3cnos4.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2rs8uj3cnos4.cloudfront.net/mac-apps/releases/Sookasa_#{version}.pkg"
  appcast 'https://s3.amazonaws.com/sookasa-static-assets/mac-apps/appcats/appcast_mac_no_update.xml',
          checkpoint: '448360f2c1eec35b8b7ab5d6beaf5ecf25ea3f4a1f6d6f181f60aeb3bba3fcce'
  name 'Sookasa'
  homepage 'https://www.sookasa.com'

  pkg "Sookasa_#{version}.pkg"

  uninstall quit:    'com.sookasa.Sookasa',
            pkgutil: 'com.sookasa.Sookasa'
end
