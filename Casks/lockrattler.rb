cask 'lockrattler' do
  version '4.21,2019.06'
  sha256 '74e8d2f7b7e8dd0b07725e71006f2cac77fcf04231f04c530faf431206c66497'

  # eclecticlightdotcom.files.wordpress.com was verified as official when first introduced to the cask
  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.major}/#{version.after_comma.minor}/lockrattler#{version.before_comma.no_dots}.zip"
  appcast 'https://eclecticlight.co/lockrattler-systhist/'
  name 'Lock Rattler'
  homepage 'https://eclecticlight.co/'

  depends_on macos: '>= :el_capitan'

  app "lockrattler#{version.before_comma.major}#{version.before_comma.minor}/LockRattler.app"
end
