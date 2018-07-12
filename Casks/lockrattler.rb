cask 'lockrattler' do
  version '4.6,2018.07'
  sha256 '1d4a477e615b621fdee8ca8fbaa11428fe3a83ce26a06c68a38e455d6d8e08f6'

  # eclecticlightdotcom.files.wordpress.com was verified as official when first introduced to the cask
  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.dots_to_slashes}/lockrattler#{version.before_comma.no_dots}.zip"
  name 'Lock Rattler'
  homepage 'https://eclecticlight.co/'

  depends_on macos: '>= :el_capitan'

  app "lockrattler#{version.before_comma.no_dots}/LockRattler.app"
end
