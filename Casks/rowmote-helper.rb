cask 'rowmote-helper' do
  version '4.1.6'
  sha256 '461cbe6a8d851f9d7a085868225bad6d096c32bddd85cc79f0adfb61e6b8552c'

  url "http://regularrateandrhythm.com/rowmote-pro/rh/rowmote-helper-#{version}.zip"
  appcast 'http://www.regularrateandrhythm.com/apps/rowmote-pro/rowmote-appcast.xml',
          checkpoint: 'b8e661694eed0cfc37a4030042551e881646571d1c0e17a73ceb0c7375abd15d'
  name 'Rowmote Helper'
  homepage 'http://regularrateandrhythm.com/apps/rowmote-pro/'
  license :commercial

  auto_updates true

  app 'Rowmote Helper.app'
end
