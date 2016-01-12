cask 'max' do
  version '0.9.1'
  sha256 '722bf714696d3d39329ba98ffddc9f117f8cc6863f71670507cd12f62a5e5f14'

  url "http://files.sbooth.org/Max-#{version}.tar.bz2"
  appcast 'http://sbooth.org/Max/appcast.xml',
          :sha256 => '24484cae62a24ce00da3ecfc5c50a0c8925f084b845b6cc8d057f127e373ec28'
  name 'Max'
  homepage 'http://sbooth.org/Max/'
  license :gpl

  app "Max-#{version}/Max.app"
end
