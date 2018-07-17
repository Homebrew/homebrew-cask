cask 'spectacleapp' do
  version '1.2'
  sha256 '766d5bf3b404ec567110a25de1d221290bc829302283b28ed0fbe73b9557f30c'

  # s3.amazonaws.com/spectacle/downloads/Spectacle+1.2.zip was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/spectacle/downloads/Spectacle+1.2.zip'
  name 'spectacleapp'
  homepage 'https://www.spectacleapp.com/'

  app 'Spectacle.app'
end
