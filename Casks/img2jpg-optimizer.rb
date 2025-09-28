cask "img2jpg-optimizer" do
  version "1.0.0"
  sha256 "REPLACE_WITH_ACTUAL_SHA"

  url "https://github.com/chupchupchup/IMG2JPG-Optimizer/releases/download/v#{version}/IMG2JPG-Optimizer-final.dmg"
  name "IMG2JPG-Optimizer"
  desc "Optimiseur JPEG/PNG basé sur MozJPEG (progressif, Huffman optimisé)"
  homepage "https://github.com/chupchupchup/IMG2JPG-Optimizer"

  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "IMG2JPG-Optimizer.app"

  zap trash: [
    "~/Library/Preferences/org.guy.IMG2JPG-Optimizer.plist",
    "~/Library/Saved Application State/org.guy.IMG2JPG-Optimizer.savedState",
  ]
end
