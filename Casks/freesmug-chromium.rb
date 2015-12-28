cask 'freesmug-chromium' do
  version '47.0.2526.106'
  sha256 '56103834eaf55b40ae541999fb3d024c12cd014def0786efaeab3f8460bc4504'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          :sha256 => 'c522b92183b10e98bf35ae9a4ee81e9a236000022ae2385dbb11b08732896c27'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
