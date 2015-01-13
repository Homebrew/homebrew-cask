cask :v1 => 'lifeslice' do
  version :latest
  sha256 :no_check

  url 'http://wanderingstan.com/apps/lifeslice/LifeSlice.dmg'
  name 'LifeSlice'
  homepage 'http://wanderingstan.github.io/Lifeslice/'
  license :oss

  app 'LifeSlice.app'
end
