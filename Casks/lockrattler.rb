cask 'lockrattler' do
  version '4.3,2018.05'
  sha256 'cc1df87022d74178c9cafff981ffb3c6a50508d6ebee9ded98520e288bf7be62'

  # eclecticlightdotcom.files.wordpress.com was verified as official when first introduced to the cask
  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.dots_to_slashes}/lockrattler#{version.before_comma.no_dots}.zip"
  name 'Lock Rattler'
  homepage 'https://eclecticlight.co/'

  app "lockrattler#{version.before_comma.no_dots}/LockRattler.app"
end
