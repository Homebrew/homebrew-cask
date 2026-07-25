cask "hop" do
  arch arm: "arm64", intel: "x64"

  version "0.4.1"
  sha256 arm:   "6f2da9844e0a8196f1be8256c34d5f3c3d479deb224bbe417e349a49a5ddc76d",
         intel: "f3ea41a3cba91358fe0b39c6f3dbb512cdf1cc2d10070486f6db7e69ca979161"

  url "https://github.com/golbin/hop/releases/download/v#{version}/HOP-macos-#{arch}.dmg",
      verified: "github.com/golbin/hop/"
  name "HOP"
  desc "View and edit HWP documents"
  homepage "https://golbin.github.io/hop/"

  depends_on macos: :monterey

  app "HOP.app"

  zap trash: [
    "~/Library/Application Support/net.golbin.hop",
    "~/Library/Caches/net.golbin.hop",
    "~/Library/Logs/net.golbin.hop",
    "~/Library/WebKit/net.golbin.hop",
  ]
end
