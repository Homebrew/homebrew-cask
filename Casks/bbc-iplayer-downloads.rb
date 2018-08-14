cask 'bbc-iplayer-downloads' do
  version '2.5.8'
  sha256 '8e8bd6d4aa884d29b379ef1b905a6a87276caad4f5810e51a904f4fdef97990e'

  # live-downloads-app-bucket-staticassetsbucket-ydn3z4ggyaof.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://live-downloads-app-bucket-staticassetsbucket-ydn3z4ggyaof.s3.amazonaws.com/releases/darwin-x64/BBCiPlayerDownloads-#{version}.dmg"
  name 'BBC iPlayer Downloads'
  homepage 'https://www.bbc.co.uk/iplayer/install'

  app 'BBC iPlayer Downloads.app'
end
