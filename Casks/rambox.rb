cask 'rambox' do
  version '0.5.16'
  sha256 'bf5da49c53579137e9904d10460313041d0c9698cac564e40033bcf08dc3cb0e'

  # github.com/saenzramiro/rambox was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/saenzramiro/rambox/releases.atom',
          checkpoint: 'd5852eacbf3084a759b0d4675af8fc2da11164d914155eb69df10561539ae477'
  name 'Rambox'
  homepage 'http://rambox.pro/'

  app 'Rambox.app'

  uninstall login_item: 'Rambox'
end
