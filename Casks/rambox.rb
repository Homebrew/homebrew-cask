cask 'rambox' do
  version '0.5.12'
  sha256 '607da630812d3144f4ec32ef30a56e2a505846cc819bcd282fc93dd971bb82af'

  # github.com/saenzramiro/rambox was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/saenzramiro/rambox/releases.atom',
          checkpoint: '6bead2754d8c013a125dda858ffe5fde84183fa9c5eecada8032dc0965f521a0'
  name 'Rambox'
  homepage 'http://rambox.pro/'

  app 'Rambox.app'
end
