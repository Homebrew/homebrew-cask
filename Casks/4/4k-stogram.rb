cask "4k-stogram" do
  arch arm: "arm64", intel: "x64"

  version "4.9.0"
  sha256 arm:   "4aa6ff10b55fd46b9eda84ea83cc5e026c9ee376b93bdf7ce832bdc561deb2e3",
         intel: "a30e5cf391cc86bd04c7318be6a83ea4aebe8034b41e20bc07ad57d769845fa6"

  url "https://dl.4kdownload.com/app/4kstogram_#{version}_#{arch}.dmg"
  name "4K Stogram"
  desc "Download Instagram photos, accounts, hashtags and locations"
  homepage "https://www.4kdownload.com/products/product-stogram"

  livecheck do
    url "https://www.4kdownload.com/downloads"
    regex(%r{href=.*?/4kstogram[._-]?v?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "4K Stogram.app"

  zap trash: "~/Pictures/4K Stogram"
end
