cask "4k-image-compressor" do
  arch arm: "arm64", intel: "x64"

  version "26.0.0"
  sha256 arm:   "fa61a084c3d901b7906dc9e03c94c372c6d2513bc447c6f1653164ac3c6c2447",
         intel: "1fba0a3d4be3eeccca209bce548c0063f14477f97a10b6b57abd484b425df6d7"

  url "https://dl.4kdownload.com/app/4kimagecompressor_#{version}_#{arch}.dmg"
  name "4K Image Compressor"
  desc "Image compressor"
  homepage "https://www.4kdownload.com/products/imagecompressor"

  livecheck do
    url "https://www.4kdownload.com/downloads"
    regex(%r{href=.*?/4kimagecompressor[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  depends_on macos: :monterey

  app "4K Image Compressor.app"

  zap trash: [
    "~/Library/Application Support/4kdownload.com/4K Image Compressor",
    "~/Library/Preferences/com.4kdownload.4K Image Compressor.plist",
  ]
end
