cask "4k-stogram" do
  version "3.1.0.3300"
  sha256 "bb6c4b2be2ee8b894a0310871ec9d07fd1b665e3551fa38ff5fb13359029b919"

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast "https://www.4kdownload.com/download"
  name "4K Stogram"
  homepage "https://www.4kdownload.com/products/product-stogram"

  depends_on macos: ">= :sierra"

  app "4K Stogram.app"

  zap trash: "~/Pictures/4K Stogram"
end
