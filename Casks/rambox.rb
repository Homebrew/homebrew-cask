cask 'rambox' do
  version '0.5.8'
  sha256 '20975c7f4bbf1e22722ecff09c670ad25c14f89786a362ca6f48b0881decb679'

  # github.com/saenzramiro/rambox was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/saenzramiro/rambox/releases.atom',
          checkpoint: '71b39b8b6c649886e5cde8fa6905e7334ac2bf56fb167526f94d50b68cb2ed72'
  name 'Rambox'
  homepage 'http://rambox.pro/'

  app 'Rambox.app'
end
