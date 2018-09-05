cask 'beesoft' do
  version '4.0.5'
  sha256 '6cf5cc5873f9c6a78292f9d4586682b0cceb1c0336666617ad4924783ca793ea'

  url "https://www.beeverycreative.com/public/software/BEESOFT/BEESOFT%20-%20#{version.major_minor}/Desktop%20Version/BEESOFT-#{version}.pkg"
  name 'Beesoft'
  homepage 'https://beeverycreative.com/beesoft/'

  pkg "BEESOFT-#{version}.pkg"

  uninstall pkgutil: 'com.beeverycreative.beeweb'
end
