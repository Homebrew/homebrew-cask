cask "4k-stogram" do
  version "3.3.4"
  sha256 "d29099b5037778bdf002aeea2504336da5568044abfa466bccd91b2ce06e10df"

  url "https://dl.4kdownload.com/app/4kstogram_#{version}.dmg"
  name "4K Stogram"
  desc "Download Instagram photos, accounts, hashtags and locations"
  homepage "https://www.4kdownload.com/products/product-stogram"

  livecheck do
    url "https://www.4kdownload.com/download"
    strategy :page_match
    regex(%r{href=.*?/4kstogram_(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "4K Stogram.app"

  zap trash: "~/Pictures/4K Stogram"
end
