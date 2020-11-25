cask "4k-stogram" do
  version "3.2.1.3420"
  sha256 "3051057afcc3b34fd9fd9b6b52d4a99e6a52bccf4fb61a897b94c14ff709edbe"

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast "https://www.4kdownload.com/download"
  name "4K Stogram"
  homepage "https://www.4kdownload.com/products/product-stogram"

  depends_on macos: ">= :sierra"

  app "4K Stogram.app"

  zap trash: "~/Pictures/4K Stogram"
end
