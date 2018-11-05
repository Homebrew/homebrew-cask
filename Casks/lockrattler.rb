cask 'lockrattler' do
  version '4.13,2018.11'
  sha256 '9bb9db89c608bea98aede1fbbf8da905ddebec9c6c02c15f58d3c8d55c621c1c'

  # eclecticlightdotcom.files.wordpress.com was verified as official when first introduced to the cask
  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.dots_to_slashes}/lockrattler#{version.before_comma.major}#{version.before_comma.minor}.zip"
  name 'Lock Rattler'
  homepage 'https://eclecticlight.co/'

  depends_on macos: '>= :el_capitan'

  app "lockrattler#{version.before_comma.major}#{version.before_comma.minor}/LockRattler.app"
end
