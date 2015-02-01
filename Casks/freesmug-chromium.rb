cask :v1 => 'freesmug-chromium' do
  version '40.0.2214.94'
  sha256 '404d93a048f86d500320c7d2a11b58bf8391aca190278036688c095fd8d183b2'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :oss

  app 'Chromium.app'
end
