cask "4k-stogram" do
  version "4.4.2"
  sha256 "2226895ef2e3b69b53c83dad26dca9df0761fc63e7cf700d5dab80c3d6f8d6dd"

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
