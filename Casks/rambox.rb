cask 'rambox' do
  version '0.4.1'
  sha256 '36a8447859b49614e180c592631e6b4efdf69b4af08ca178ea82cd2735acd185'

  # github.com/saenzramiro/rambox was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/saenzramiro/rambox/releases.atom',
          checkpoint: 'eca792414d72fdd42aeeb21587154863b4fe11bf46efa003c79c4725010640f0'
  name 'Rambox'
  homepage 'http://rambox.pro/'
  license :oss

  app 'Rambox.app'
end
