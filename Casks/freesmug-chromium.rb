cask :v1 => 'freesmug-chromium' do
  version '44.0.2403.157'
  sha256 '71215ab335d132c1ad3c6b3fcb5ebc75d4b3384b7c988f7980377cc35280c6f2'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
