cask "kindle" do
  version "1.30.59055"
  sha256 "1b70345bb96394f5662c1dfedf15a318e83f259553c83d81e32fc1e25fa251ab"

  # kindleformac.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://kindleformac.s3.amazonaws.com/#{version.patch}/KindleForMac-#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.amazon.com/kindlemacdownload/ref=klp_hz_mac"
  name "Kindle for Mac"
  desc "Interface for reading and syncing eBooks"
  homepage "https://www.amazon.com/gp/digital/fiona/kcp-landing-page"

  app "Kindle.app"

  zap trash: [
    "~/Library/Preferences/com.amazon.Kindle.plist",
    "~/Library/Application Support/Kindle/",
    "~/Library/Saved Application State/com.amazon.Kindle.savedState/",
    "~/Library/Caches/com.amazon.Kindle-Crash-Reporter/",
  ]
end
