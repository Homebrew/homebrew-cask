cask 'lockrattler' do
  version '4.14,2018.11'
  sha256 '92a1607c41e43d243b8bf5c2886d86feec1947f705862b07deafb704956053fe'

  # eclecticlightdotcom.files.wordpress.com was verified as official when first introduced to the cask
  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.dots_to_slashes}/lockrattler#{version.before_comma.major}#{version.before_comma.minor}.zip"
  name 'Lock Rattler'
  homepage 'https://eclecticlight.co/'

  depends_on macos: '>= :el_capitan'

  app "lockrattler#{version.before_comma.major}#{version.before_comma.minor}/LockRattler.app"
end
