cask "mumu" do
  version "1.1.9,z1OGCA1HTEaGuREtlgxX"
  sha256 "e957259d2eb69aaf0cf3ba6c09f06561784a538a3f81bc84ab8c91b3d2590438"

  url "https://paddle.s3.amazonaws.com/fulfillment_downloads/116824/597910/#{version.csv.second}_Mumu%20#{version.csv.first}.dmg",
      verified: "paddle.s3.amazonaws.com/fulfillment_downloads/116824/597910/"
  name "Mumu"
  desc "Emoji picker"
  homepage "https://getmumu.com/"

  livecheck do
    url "https://vendors.paddle.com/download/product/597910"
    regex(%r{/([^/]+)_Mumu%20(\d+(?:\.\d+)*)\.dmg}i)
    strategy :header_match do |headers, regex|
      headers["location"].scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Mumu.app"

  zap trash: [
    "~/Library/Application Support/com.wilbertliu.mumu",
    "~/Library/Application Support/Mumu",
    "~/Library/Caches/com.wilbertliu.mumu",
    "~/Library/Cookies/com.wilbertliu.mumu.binarycookies",
    "~/Library/Preferences/com.wilbertliu.mumu.plist",
  ]
end
