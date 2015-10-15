cask :v1 => 'freesmug-chromium' do
  version '46.0.2490.71'
  sha256 'bd97725594461ccdd1cbd81de8a00a16b15e2dcbb2cb3c9866c3af251fa562b3'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
