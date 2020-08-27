cask "4k-stogram" do
  version "3.0.7.3300"
  sha256 "4bfb52578517e40a2176a7666b05dd32d2baf35af8e41800380469b9b139415f"

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast "https://www.4kdownload.com/download"
  name "4K Stogram"
  homepage "https://www.4kdownload.com/products/product-stogram"

  depends_on macos: ">= :sierra"

  app "4K Stogram.app"

  zap trash: "~/Pictures/4K Stogram"
end
