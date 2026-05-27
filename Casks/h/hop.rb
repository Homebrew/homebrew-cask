cask "hop" do
  arch arm: "arm64", intel: "x64"

  version "0.3.1"
  sha256 arm:   "b6cb288b6f6432e800ffc703ca2f7db25de8b725e5521b4fe050c6a11dbef13d",
         intel: "599e63c779c8f61746b87a8f8613ccd4b5e1d283324e9bbed61fa4e18357515d"

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
