cask 'debookee' do
  version '5.2.3'
  sha256 '6adb304cd2c8fc232a13c8596a2ba2a311207024a9bc201b9cb37fcd04fd80e9'

  # iwaxx.com/debookee/ was verified as official when first introduced to the cask
  url 'https://www.iwaxx.com/debookee/debookee.zip'
  appcast 'https://www.iwaxx.com/debookee/appcast.php',
          checkpoint: 'e604e18bc376cc0561f6ccc875f45b79f4f17a207c4faa93960e53fda4f413ac'
  name 'Debookee'
  homepage 'https://debookee.com/'

  app "Debookee #{version}/Debookee.app"
end
