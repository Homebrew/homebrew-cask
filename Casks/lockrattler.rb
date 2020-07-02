cask 'lockrattler' do
  version '4.25,2020.06'
  sha256 '88eb0985adab7a327516ccd94396e5ad78d6afaf7b5c1d92665a0fab9268c53e'

  # eclecticlightdotcom.files.wordpress.com/ was verified as official when first introduced to the cask
  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.major}/#{version.after_comma.minor}/lockrattler#{version.before_comma.no_dots}.zip"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist&splitter_1=LockRattler&index_1=1&splitter_2=Version&index_2=1&splitter_3=dict&index_3=0'
  name 'Lock Rattler'
  homepage 'https://eclecticlight.co/'

  depends_on macos: '>= :el_capitan'

  app "lockrattler#{version.before_comma.major}#{version.before_comma.minor}/LockRattler.app"
end
