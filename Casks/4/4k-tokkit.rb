cask "4k-tokkit" do
  arch arm: "arm64", intel: "x64"

  version "26.0.0"
  sha256 arm:   "4240c983f775c86c4585413ed254a69d295c60f0d100f9c416434974daa7f70e",
         intel: "0b531b5d8e966249f30df773834ad24c1236276a0a6d28ff9ed20f335f20fd0c"

  url "https://dl.4kdownload.com/app/4ktokkit_#{version}_#{arch}.dmg"
  name "4K Tokkit"
  desc "Download TikTok videos and accounts"
  homepage "https://www.4kdownload.com/products/tokkit/17"

  livecheck do
    url "https://www.4kdownload.com/downloads"
    regex(/href=.*?4ktokkit[._-]v?(\d+(?:\.\d+)+)[._-]x64\.dmg/i)
  end

  depends_on macos: :monterey

  app "4K Tokkit.app"

  zap trash: [
    "~/Library/Application Support/4kdownload.com/4K Tokkit",
    "~/Library/Preferences/com.4kdownload.4K Tokkit.plist",
  ]
end
