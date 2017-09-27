cask 'freesmug-chromium' do
  version '61.0.3163.100'
  sha256 '7a07d3f7cca5c0b38ca811984ef8da536da32932d68c1a6cce33ec2462b930bf'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '7a07d3f7cca5c0b38ca811984ef8da536da32932d68c1a6cce33ec2462b930bf'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
