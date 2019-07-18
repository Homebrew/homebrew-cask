cask 'lockrattler' do
  version '4.22,2019.07'
  sha256 'd9f2da8b1cbf996acda2572ad8a23920758448dc4efbc7bbb1c13c9d23f10905'

  # eclecticlightdotcom.files.wordpress.com was verified as official when first introduced to the cask
  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.major}/#{version.after_comma.minor}/lockrattler#{version.before_comma.no_dots}.zip"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/extract_text_split.cgi?splitters=\[\{%22s%22:%22LockRattler%22,%22i%22:1\},\{%22s%22:%22Version%22,%22i%22:1\},\{%22s%22:%22dict%22,%22i%22:0\}\]&url=https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist'
  name 'Lock Rattler'
  homepage 'https://eclecticlight.co/'

  depends_on macos: '>= :el_capitan'

  app "lockrattler#{version.before_comma.major}#{version.before_comma.minor}/LockRattler.app"
end
