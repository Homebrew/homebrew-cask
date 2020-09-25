cask "bbc-iplayer-downloads" do
  version "2.12.10"
  sha256 "c50dbb2b744a93407fe83ed69565eef60389836b1689ea9db0fa68bdb0c2a10e"

  # live-downloads-app-bucket-staticassetsbucket-ydn3z4ggyaof.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://live-downloads-app-bucket-staticassetsbucket-ydn3z4ggyaof.s3.amazonaws.com/releases/darwin-x64/BBCiPlayerDownloads-#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://downloads-app.iplayer.api.bbc.co.uk/stable/darwin-x64"
  name "BBC iPlayer Downloads"
  homepage "https://www.bbc.co.uk/iplayer/install"

  app "BBC iPlayer Downloads.app"
end
