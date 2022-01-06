cask "4k-stogram" do
  version "4.2.1"
  sha256 "1c26ab5b9efa31178aeb514b07b835204f42afaf1a11bd3385e1183eb957620f"

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
