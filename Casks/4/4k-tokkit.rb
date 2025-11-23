cask "4k-tokkit" do
  arch arm: "arm64", intel: "x64"

  version "25.4.1"
  sha256 arm:   "141d6d7533991090a9dc71b8e262a82278e1e23ed8edcd053d402fab6e1ff61a",
         intel: "e817939cc9b6eeb39b8f10aa980a03a167ef2e5d8c132b223e3f4e450e21e5df"

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
