cask 'f-bar' do
  version '2.0.2'
  sha256 '88f337c5558ea89c0486b6a86fd4be991bce20b99383c9119d5c187f55e9eeb7'

  # eastwest.se/fbar was verified as official when first introduced to the cask
  url "https://apps.eastwest.se/fbar/updates/F-Bar_#{version}.zip"
  name 'F-Bar'
  homepage 'https://laravel-forge-menubar.com/'

  app 'F-Bar.app'
end
