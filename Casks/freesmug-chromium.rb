cask :v1 => 'freesmug-chromium' do
  version '46.0.2490.80'
  sha256 'ccdb9cc43f14fbaad353177b20c7b656a39f132c1a4eacae13c957f65248ab90'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
