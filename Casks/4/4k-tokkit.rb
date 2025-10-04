cask "4k-tokkit" do
  arch arm: "arm64", intel: "x64"

  version "25.3.0"
  sha256 arm:   "1cf699912f16135f2e2a5ba146d9f1bc1c57e77930d5dd00e9ad452ffd63332b",
         intel: "4b37578a218fecc90c546377e3b7be8b81c7cb463f2280b709876877928462c6"

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
