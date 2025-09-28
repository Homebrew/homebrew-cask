cask "img2jpg-optimizer" do
  version "1.0.0"
  sha256 "035151d675fb27b49d6e46ec5df63c3454ed1f09f4637bccb8924af20224d9e5"

  url "https://github.com/chupchupchup/IMG2JPG-Optimizer/releases/download/v#{version}/IMG2JPG-Optimizer-final.dmg"
  name "IMG2JPG Optimizer"
  desc "Optimiseur d’images MozJPEG (JPEG progressif, Huffman optimisé) pour macOS Apple Silicon"
  homepage "https://github.com/chupchupchup/IMG2JPG-Optimizer"

  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "IMG2JPG-Optimizer.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/IMG2JPG-Optimizer.app"],
                   sudo: false
  end
end
