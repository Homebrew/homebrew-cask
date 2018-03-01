cask 'rambox' do
  version '0.5.15'
  sha256 '75c15d6a87494660b1ca5dc3910909c539ac1cd3312b11a150c6f26ea4b4b057'

  # github.com/saenzramiro/rambox was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/saenzramiro/rambox/releases.atom',
          checkpoint: 'd3d4a831bf6b37877e4d86e19328f35fa1b47144992d5a1cb8e59a160a7c716a'
  name 'Rambox'
  homepage 'http://rambox.pro/'

  app 'Rambox.app'

  uninstall login_item: 'Rambox'
end
