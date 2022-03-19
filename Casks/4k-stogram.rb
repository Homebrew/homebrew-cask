cask "4k-stogram" do
  version "4.3.0"
  sha256 "44d2f077517505ae7e9c34ae0ea96a743dd10033bd021140d43222cd5694b0c8"

  url "https://dl.4kdownload.com/app/4kstogram_#{version}.dmg"
  name "4K Stogram"
  desc "Download Instagram photos, accounts, hashtags and locations"
  homepage "https://www.4kdownload.com/products/product-stogram"

  livecheck do
    url "https://www.4kdownload.com/downloads"
    regex(%r{href=.*?/4kstogram[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "4K Stogram.app"

  zap trash: "~/Pictures/4K Stogram"
end
