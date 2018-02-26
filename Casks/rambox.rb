cask 'rambox' do
  version '0.5.15'
  sha256 '75c15d6a87494660b1ca5dc3910909c539ac1cd3312b11a150c6f26ea4b4b057'

  # github.com/saenzramiro/rambox was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/v#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/saenzramiro/rambox/releases.atom',
          checkpoint: '57314273c3e4162e5a43ed403fe21cb255f2778f0232acfa0a4e650ab8b9f867'
  name 'Rambox'
  homepage 'http://rambox.pro/'

  app 'Rambox.app'
end
