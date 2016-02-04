cask 'freesmug-chromium' do
  version '48.0.2564.103'
  sha256 'dc555206efc4daf0cea328412e49c50ba2324454feb9cf20aaa48a4104aadbe5'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '61f5bdf8dec83406cdc862c2c73214f54b6ba1e3f64d8cb2f55da9741aa91fe8'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
