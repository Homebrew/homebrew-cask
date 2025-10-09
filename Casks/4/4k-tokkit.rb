cask "4k-tokkit" do
  arch arm: "arm64", intel: "x64"

  version "25.4.0"
  sha256 arm:   "92b8e5aaf1fb046eeb57a2554db1903e6b9402b11d032d3428c390cf48c3b461",
         intel: "79ab0b1904b3a2d08b3ecb78ef51f90f0d9f001c606883e409ae0e2bc706f450"

  url "https://dl.4kdownload.com/app/4ktokkit_#{version}_#{arch}.dmg"
  name "4K Tokkit"
  desc "Download TikTok videos and accounts"
  homepage "https://www.4kdownload.com/products/tokkit/17"

  livecheck do
    url "https://www.4kdownload.com/downloads"
    regex(/href=.*?4ktokkit[._-]v?(\d+(?:\.\d+)+)[._-]x64\.dmg/i)
  end

  app "4K Tokkit.app"

  zap trash: [
    "~/Library/Application Support/4kdownload.com/4K Tokkit",
    "~/Library/Preferences/com.4kdownload.4K Tokkit.plist",
  ]
end
