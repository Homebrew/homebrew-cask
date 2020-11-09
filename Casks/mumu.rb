cask "mumu" do
  version "1.1.6,uI6ebUQDSdCoIyN3fCMy"
  sha256 "376cdf20d6b9b1ceca0ad8047da3f0b920a00837e7b884ad22c68cad643e7f06"

  # paddle.s3.amazonaws.com/fulfillment_downloads/116824/597910/ was verified as official when first introduced to the cask
  url "https://paddle.s3.amazonaws.com/fulfillment_downloads/116824/597910/#{version.after_comma}_Mumu%20#{version.before_comma}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://vendors.paddle.com/download/product/597910"
  name "Mumu"
  homepage "https://getmumu.com/"

  depends_on macos: ">= :high_sierra"

  app "Mumu.app"

  zap trash: [
    "~/Library/Application Support/Mumu",
    "~/Library/Application Support/com.wilbertliu.mumu",
    "~/Library/Caches/com.wilbertliu.mumu",
    "~/Library/Cookies/com.wilbertliu.mumu.binarycookies",
    "~/Library/Preferences/com.wilbertliu.mumu.plist",
  ]
end
