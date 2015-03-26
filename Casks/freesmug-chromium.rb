cask :v1 => 'freesmug-chromium' do
  version '41.0.2272.101'
  sha256 'c156b5ac0b64e53609ce3e07545195af379c2c234fc1f8050dd656949abc69a2'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
