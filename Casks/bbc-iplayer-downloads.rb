cask 'bbc-iplayer-downloads' do
  version '2.8.4'
  sha256 'a0702fe26608311533446eab9b4831d6bc74058a74a77f5dc9b2439cac614c36'

  # live-downloads-app-bucket-staticassetsbucket-ydn3z4ggyaof.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://live-downloads-app-bucket-staticassetsbucket-ydn3z4ggyaof.s3.amazonaws.com/releases/darwin-x64/BBCiPlayerDownloads-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://downloads-app.iplayer.api.bbc.co.uk/stable/darwin-x64'
  name 'BBC iPlayer Downloads'
  homepage 'https://www.bbc.co.uk/iplayer/install'

  app 'BBC iPlayer Downloads.app'
end
