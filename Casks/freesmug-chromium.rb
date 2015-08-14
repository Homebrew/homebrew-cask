cask :v1 => 'freesmug-chromium' do
  version '44.0.2403.155'
  sha256 'e8bfa4c0bfe01ae4a9c06da4273db66bc7fb1024894b1673a9aa5036728ded4e'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
