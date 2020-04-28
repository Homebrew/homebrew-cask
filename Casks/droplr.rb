cask 'droplr' do
  version '5.7.2,425'
  sha256 'fd38fb8d49ec6d8d84a9d402154a5a5c6ace8defcae8e063525703bf651cec4c'

  url "https://files.droplr.com/apps/mac/Droplr+#{version.after_comma}.zip"
  appcast 'https://droplr.com/appcast/appcast-sandbox.xml'
  name 'Droplr'
  homepage 'https://droplr.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  pkg "Droplr#{version.before_comma.no_dots}-#{version.after_comma}.pkg"

  uninstall pkgutil: 'com.droplr.droplr-mac',
            quit:    'com.droplr.droplr-mac'
end
