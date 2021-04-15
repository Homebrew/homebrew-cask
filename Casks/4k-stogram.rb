cask "4k-stogram" do
  version "3.4.0"
  sha256 "c6339111f3dd6f81f1ea60b34d262b900fa47d80bc410f410fcf4b46e8fcbf8f"

  url "https://dl.4kdownload.com/app/4kstogram_#{version}.dmg"
  name "4K Stogram"
  desc "Download Instagram photos, accounts, hashtags and locations"
  homepage "https://www.4kdownload.com/products/product-stogram"

  livecheck do
    url "https://www.4kdownload.com/download"
    strategy :page_match
    regex(%r{href=.*?/4kstogram_(\d+(?:\.\d+)*)\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "4K Stogram.app"

  zap trash: "~/Pictures/4K Stogram"
end
