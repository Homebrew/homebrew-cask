cask "4k-tokkit" do
  arch arm: "arm64", intel: "x64"

  version "25.4.2"
  sha256 arm:   "e7e96663aec8e191f614ffb1e71c846befcabdd9c6e6221b2ae02c88538520a4",
         intel: "27628ab4d397e92ac357a1095e53d5debfd40b16b24347260fa64e845b28b62b"

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
