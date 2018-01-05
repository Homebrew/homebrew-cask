cask 'freesmug-chromium' do
  version '63.0.3239.132'
  sha256 '9255680e9a07d493ab7af071c3b9781ecc7672bcdb83fcb42684fbad512961f0'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '890507a835ef1b4d95f4640c565e936265f0f6a6f5060f286f9a579d12fcdc24'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
