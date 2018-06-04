cask 'shortcat' do
  version '0.7.9'
  sha256 'a6fb545f12783cde33f3b50b393e77bb721c32446dbf37fc71bb7a7a6a9b427e'

  url "https://files.shortcatapp.com/v#{version}/Shortcat.zip"
  appcast 'https://shortcatapp.com/updates/appcast.xml',
          checkpoint: 'cb8949df6cc268416f21612d6377e72def820aec096881f41c0efb5b92d96381'
  name 'Sproutcube Shortcat'
  homepage 'https://shortcatapp.com/'

  accessibility_access true

  app 'Shortcat.app'

  zap trash: [
               '~/Library/Application Support/Shortcat',
               '~/Library/Cookies/com.sproutcube.Shortcat.binarycookies',
               '~/Library/Preferences/com.sproutcube.Shortcat.plist',
             ]
end
