cask 'bbc-iplayer-downloads' do
  version '2.6.1'
  sha256 '8b48d70db98ac2206e2a253b658bc8ed8631cefe1ec4ed3ba03a346e3c6b6209'

  # live-downloads-app-bucket-staticassetsbucket-ydn3z4ggyaof.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://live-downloads-app-bucket-staticassetsbucket-ydn3z4ggyaof.s3.amazonaws.com/releases/darwin-x64/BBCiPlayerDownloads-#{version}.dmg"
  name 'BBC iPlayer Downloads'
  homepage 'https://www.bbc.co.uk/iplayer/install'

  app 'BBC iPlayer Downloads.app'
end
