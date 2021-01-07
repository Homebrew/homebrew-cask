cask "mumu" do
  version "1.1.7,MCwXM09pQfyx4ZZnEIg3"
  sha256 "9f560e4a246cd4ba38dbf495d364f34f33d20acf48d5c5b3c502630721da6162"

  url "https://paddle.s3.amazonaws.com/fulfillment_downloads/116824/597910/#{version.after_comma}_Mumu%20#{version.before_comma}.dmg",
      verified: "paddle.s3.amazonaws.com/fulfillment_downloads/116824/597910/"
  name "Mumu"
  homepage "https://getmumu.com/"

  livecheck do
    url "https://vendors.paddle.com/download/product/597910"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/([^/]+)_Mumu%20(\d+(?:\.\d+)*)\.dmg}i)
      "#{match[2]},#{match[1]}"
    end
  end

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
