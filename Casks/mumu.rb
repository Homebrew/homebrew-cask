cask "mumu" do
  version "1.1.2,AjOnLLkkT8ycuoFpJJ1p"
  sha256 "a0672673e7260cba26ea6d698a6421688159bbc0d7c1185f3b4b0f056336e6c2"

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
