cask 'freesmug-chromium' do
  version '59.0.3071.86'
  sha256 '29bffb8362dd452a23a588432df6074da92106e43bf44d90639a82aa8edd4e27'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'bf37f8686a0a24bd917add725b2df7207d934c4191ef7712d2aa51866c0fb122'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
