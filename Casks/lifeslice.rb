cask :v1 => 'lifeslice' do
  version :latest
  sha256 :no_check

  # wanderingstan.com is the official download host per the vendor homepage
  url 'http://wanderingstan.com/apps/lifeslice/LifeSlice.dmg'
  name 'LifeSlice'
  appcast 'http://wanderingstan.com/apps/lifeslice/sparkle-lifeslice-appcast-xml.php',
          :sha256 => '57aa727b84ce1ac250eb00aa1eb3954f6e733e9d7b7baee9221c49efc8ddaf06'
  homepage 'https://wanderingstan.github.io/Lifeslice/'
  license :oss

  app 'LifeSlice.app'
end
