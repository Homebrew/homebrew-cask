cask 'freesmug-chromium' do
  version '49.0.2623.108'
  sha256 'f003ac45eb6ad2df8df594b73e78cac1817bfef672838fd8f017c91815f79a1e'

  # sourceforge.net/sourceforge/osxportableapps was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'f575e3762658a00c7f5a8d7a0db7ebbf4d89852a8aa142cb850883b91dc9a4f9'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
