cask 'bbc-iplayer-downloads' do
  version '2.6.8'
  sha256 '22b32c48e1c5ce5d9670584d8f50095ac8a992b7586e268bb43d2814663b5a25'

  # live-downloads-app-bucket-staticassetsbucket-ydn3z4ggyaof.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://live-downloads-app-bucket-staticassetsbucket-ydn3z4ggyaof.s3.amazonaws.com/releases/darwin-x64/BBCiPlayerDownloads-#{version}.dmg"
  name 'BBC iPlayer Downloads'
  homepage 'https://www.bbc.co.uk/iplayer/install'

  app 'BBC iPlayer Downloads.app'
end
