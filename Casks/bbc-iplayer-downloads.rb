cask 'bbc-iplayer-downloads' do
  version '2.5.6'
  sha256 '87656578b9ebb031ebaa658d56133f05b50a5cfcac4095d5fac8ccd50d625976'

  # live-downloads-app-bucket-staticassetsbucket-ydn3z4ggyaof.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://live-downloads-app-bucket-staticassetsbucket-ydn3z4ggyaof.s3.amazonaws.com/releases/darwin-x64/BBCiPlayerDownloads-#{version}.dmg"
  name 'BBC iPlayer Downloads'
  homepage 'https://www.bbc.co.uk/iplayer/install'

  app 'BBC iPlayer Downloads.app'
end
