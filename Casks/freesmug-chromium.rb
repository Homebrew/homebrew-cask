cask 'freesmug-chromium' do
  version '60.0.3112.113'
  sha256 'ebdbcdb244f1b80a4ee8e2829f7fda826d0ccda64bd462764103f00a3dbbea0a'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'd974b533339f427cd0843c7e5516e42428390413f8d388c3b21beb0d946f4512'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
