cask :v1 => 'freesmug-chromium' do
  version '42.0.2311.90'
  sha256 'a0636be0ddf11cc634a0bf3f63b85e747bb3c0e3e0ce85110ee16882e5229183'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
