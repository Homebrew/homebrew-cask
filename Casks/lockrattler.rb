cask 'lockrattler' do
  version '4.4,2018.06'
  sha256 '6cb50a741303b0f77fdf4efe2fed99d7874cbae3d61dcbc6cdae731b8c827e7d'

  # eclecticlightdotcom.files.wordpress.com was verified as official when first introduced to the cask
  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.dots_to_slashes}/lockrattler#{version.before_comma.no_dots}.zip"
  name 'Lock Rattler'
  homepage 'https://eclecticlight.co/'

  depends_on macos: '>= :el_capitan'

  app "lockrattler#{version.before_comma.no_dots}/LockRattler.app"
end
