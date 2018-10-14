cask 'lockrattler' do
  version '4.11,2018.09'
  sha256 '08b5d208c11a97c2150580c3deb1dd82e3f90d9c1fd20e28c825be0b22f64aea'

  # eclecticlightdotcom.files.wordpress.com was verified as official when first introduced to the cask
  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.dots_to_slashes}/lockrattler#{version.before_comma.major}#{version.before_comma.minor}.zip"
  name 'Lock Rattler'
  homepage 'https://eclecticlight.co/'

  depends_on macos: '>= :el_capitan'

  app "lockrattler#{version.before_comma.major}#{version.before_comma.minor}/LockRattler.app"
end
