cask 'lockrattler' do
  version '4.10,2018.08'
  sha256 'fc2d94ad45a99e783f64f0338d03f7fa61012df4d8fb51bb40ff92160330458e'

  # eclecticlightdotcom.files.wordpress.com was verified as official when first introduced to the cask
  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.dots_to_slashes}/lockrattler#{version.before_comma.major}p#{version.before_comma.minor}.zip"
  name 'Lock Rattler'
  homepage 'https://eclecticlight.co/'

  depends_on macos: '>= :el_capitan'

  app "lockrattler#{version.before_comma.major}p#{version.before_comma.minor}/LockRattler.app"
end
