cask 'freesmug-chromium' do
  version '77.0.3865.120'
  sha256 'a0240fc93f341d672d3bbcb5479c2b3567f57bec906d576b88c3dadaffb7cd10'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
