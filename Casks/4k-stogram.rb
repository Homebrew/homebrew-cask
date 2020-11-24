cask "4k-stogram" do
  version "3.2.0.3390"
  sha256 "809cd3322a60d4ddadf5421781e3431b3d3330f471df78ca1117badcce79fe45"

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast "https://www.4kdownload.com/download"
  name "4K Stogram"
  homepage "https://www.4kdownload.com/products/product-stogram"

  depends_on macos: ">= :sierra"

  app "4K Stogram.app"

  zap trash: "~/Pictures/4K Stogram"
end
