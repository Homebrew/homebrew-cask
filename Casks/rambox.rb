cask 'rambox' do
  version '0.5.11'
  sha256 'f0f10974e40921ffcc54f9b2c6e8f1a8f451109f27223c1b4f6a967e8785f526'

  # github.com/saenzramiro/rambox was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/saenzramiro/rambox/releases.atom',
          checkpoint: 'f25a6a527cb4b06e1c56c8b286a550290f1cece157876dcdccaeed9b5b75716d'
  name 'Rambox'
  homepage 'http://rambox.pro/'

  app 'Rambox.app'
end
