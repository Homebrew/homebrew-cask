cask 'lockrattler' do
  version '4.7.1,2018.07'
  sha256 'b9a32b5faca3a525243bfa2c924c8cadca9168034592903c83c2c353b21b3ea8'

  # eclecticlightdotcom.files.wordpress.com was verified as official when first introduced to the cask
  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.dots_to_slashes}/lockrattler#{version.before_comma.no_dots}.zip"
  name 'Lock Rattler'
  homepage 'https://eclecticlight.co/'

  depends_on macos: '>= :el_capitan'

  app "lockrattler#{version.before_comma.no_dots}/LockRattler.app"
end
