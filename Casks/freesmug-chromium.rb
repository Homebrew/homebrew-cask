cask 'freesmug-chromium' do
  version '65.0.3325.162'
  sha256 '125a726f6e8be66061975203427bcfd9747dcbde36a30072e805ebf664310009'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '742430e18ea6d09fa3f89d9ec46b251e07587d41e3e757d80e1ed6479fb04ef2'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
