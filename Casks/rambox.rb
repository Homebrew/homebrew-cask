cask 'rambox' do
  version '0.4.4'
  sha256 '3c14ac937e9f81983175cdfc1e978fe7070799844f1d3916841b54a74b61c3c4'

  # github.com/saenzramiro/rambox was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/saenzramiro/rambox/releases.atom',
          checkpoint: 'e20b6c46e8ccf41ab8b6cedf643d42e1cc92759f803910872ee20d9a42e36528'
  name 'Rambox'
  homepage 'http://rambox.pro/'

  app 'Rambox.app'
end
