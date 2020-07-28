cask "mumu" do
  version "1.1.1,qRhq2lkVQseTWZSHvJFo"
  sha256 "f122bb92fef91891dbd4f1f4a085614490c795af4bbe2e6ecfa4bf0b5cd7a905"

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
