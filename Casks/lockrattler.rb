cask 'lockrattler' do
  version '4.5,2018.06'
  sha256 'c0eb2b1a32c9fce2794a6a4e80dadd0c51fa32c41d38a1e0d5b48e61e2a29ed0'

  # eclecticlightdotcom.files.wordpress.com was verified as official when first introduced to the cask
  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.dots_to_slashes}/lockrattler#{version.before_comma.no_dots}.zip"
  name 'Lock Rattler'
  homepage 'https://eclecticlight.co/'

  depends_on macos: '>= :el_capitan'

  app "lockrattler#{version.before_comma.no_dots}/LockRattler.app"
end
