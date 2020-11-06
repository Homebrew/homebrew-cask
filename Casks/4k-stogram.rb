cask "4k-stogram" do
  version "3.1.1.3340"
  sha256 "eaf813a1c98c34fac84b1e82a00b22ee97b286b5143cfe3960b24f3c0b0fc359"

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast "https://www.4kdownload.com/download"
  name "4K Stogram"
  homepage "https://www.4kdownload.com/products/product-stogram"

  depends_on macos: ">= :sierra"

  app "4K Stogram.app"

  zap trash: "~/Pictures/4K Stogram"
end
