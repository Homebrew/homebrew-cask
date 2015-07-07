cask :v1 => 'rowmote-helper' do
  version '4.1.2'
  sha256 '795359b6c5af08985acd7bffe7665be4c60656a7345c92c2602dd123b54380c2'

  url "http://regularrateandrhythm.com/rowmote-pro/rh/rowmote-helper-#{version}.zip"
  name 'Rowmote Helper'
  appcast 'http://rowmote.com/rowmote-appcast.xml',
          :sha256 => '47bdb0ca307c2ea1a6bbcae4f7eb0336aeea72b2b24b066dc6e4602505efee0f'
  homepage 'http://regularrateandrhythm.com/apps/rowmote-pro/'
  license :commercial

  app 'Rowmote Helper.app'
end
