cask 'lockrattler' do
  version '4.16,2018.11'
  sha256 '338e4f0997c5ee8c2ce808cb653c6e292ac01c4bf164097b26cd10d0132309d6'

  # eclecticlightdotcom.files.wordpress.com was verified as official when first introduced to the cask
  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.dots_to_slashes}/lockrattler#{version.before_comma.major}#{version.before_comma.minor}.zip"
  name 'Lock Rattler'
  homepage 'https://eclecticlight.co/'

  depends_on macos: '>= :el_capitan'

  app "lockrattler#{version.before_comma.major}#{version.before_comma.minor}/LockRattler.app"
end
