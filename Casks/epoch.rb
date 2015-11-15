cask :v1 => 'epoch' do
  version '2.0.0'
  sha256 'e50d1b89150bc600cc38430243f7533a1a6f651711dd400a72e2f4c645d947d4'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/adcade-downloads/epoch2/Epoch_#{version}_osx64.dmg"
  name 'Epoch'
  homepage 'https://www.adcade.com/'
  license :commercial

  app 'Epoch.app'
end
