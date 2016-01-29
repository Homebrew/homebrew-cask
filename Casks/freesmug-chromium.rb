cask 'freesmug-chromium' do
  version '48.0.2564.97'
  sha256 '6ec54b8583be90545519b02cc13e119ba8ff69ad272bb7770628764aef496c56'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'c5a0a7f86793407ea41cc046748eeb16760a5cf3bdbb01b4052610d442258707'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
