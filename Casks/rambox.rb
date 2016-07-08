cask 'rambox' do
  version '0.3.0'
  sha256 '64d0027f478ddb138862be1e42a2681228c9b451ed52ae8634a4cf7c2ae5d8bd'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/saenzramiro/rambox/releases/download/#{version}/Rambox-#{version}-mac.zip"
  name 'Rambox'
  homepage 'http://rambox.pro/'
  license :oss

  app 'Rambox.app'
end
