cask "4k-image-compressor" do
  arch arm: "arm64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "5dfbc61fb72a171abb2ec0660d087ca8be3df26af6a9356465b5954ce5268006",
         intel: "c822d9e6a8dfcd4d8dd560583f84a4e657557e9e576444d4e5c5daab28568cbc"

  url "https://dl.4kdownload.com/app/4kimagecompressor_#{version}_#{arch}.dmg"
  name "4K Image Compressor"
  desc "Image compressor"
  homepage "https://www.4kdownload.com/products/imagecompressor"

  livecheck do
    url "https://www.4kdownload.com/downloads"
    regex(%r{href=.*?/4kimagecompressor[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  app "4K Image Compressor.app"

  zap trash: [
    "~/Library/Application Support/4kdownload.com/4K Image Compressor",
    "~/Library/Preferences/com.4kdownload.4K Image Compressor.plist",
  ]
end
