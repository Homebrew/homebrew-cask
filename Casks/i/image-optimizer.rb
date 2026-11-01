cask "image-optimizer" do
  arch arm: "arm64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "5361c62551d5db4cb93c5f012e50b268a5367b8148d54b54987dba43f5149645",
         intel: "d2c33d9dea64ec0b46a8083912ece789ef55e1fad88efd2d480f2d7194a14383"

  url "https://github.com/antonreshetov/image-optimizer/releases/download/v#{version}/image-optimizer-#{version}-mac-#{arch}.dmg"
  name "Image Optimizer"
  desc "Tool to optimise images and vector graphics"
  homepage "https://github.com/antonreshetov/image-optimizer"

  auto_updates true
  depends_on macos: :monterey

  app "Image Optimizer.app"

  zap trash: [
    "~/Library/Application Support/image-optimizer",
    "~/Library/Preferences/com.antonreshetov.image-optimizer.plist",
    "~/Library/Saved Application State/com.antonreshetov.image-optimizer.savedState",
  ]
end
