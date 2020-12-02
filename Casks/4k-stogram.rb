cask "4k-stogram" do
  version "3.2.2.3440"
  sha256 "44a30064d1601d254a166c04d92a00de912d14827b4418e396179f9838f40cde"

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast "https://www.4kdownload.com/download"
  name "4K Stogram"
  homepage "https://www.4kdownload.com/products/product-stogram"

  depends_on macos: ">= :sierra"

  app "4K Stogram.app"

  zap trash: "~/Pictures/4K Stogram"
end
