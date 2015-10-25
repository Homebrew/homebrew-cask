cask :v1 => 'lifeslice' do
  version :latest
  sha256 :no_check

  # wanderingstan.com is the official download host per the vendor homepage
  url 'http://wanderingstan.com/apps/lifeslice/LifeSlice.dmg'
  name 'LifeSlice'
  appcast 'http://wanderingstan.com/apps/lifeslice/sparkle-lifeslice-appcast-xml.php',
          :sha256 => '90bd0939501fdc8a5b52bb24532919424ee1201a1b6281761b9e91d3b9068c61'
  homepage 'https://wanderingstan.github.io/Lifeslice/'
  license :oss

  app 'LifeSlice.app'
end
