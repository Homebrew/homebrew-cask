cask "owocr" do
  arch arm: "applesilicon", intel: "intel"

  version "1.26.3"
  sha256 arm:   "bc0f4325569bd1f1d14ab08c5cd892d0069ea639913ed028622968f70c26b5f3",
         intel: "b485261c64473025e9ce76bb5a5b597f5570deea3e272c5f68cd4205b8a82835"

  url "https://github.com/AuroraWright/owocr/releases/download/#{version}/owocr-mac_#{arch}.dmg"
  name "OwOCR"
  desc "Optical character recognition for Japanese text"
  homepage "https://github.com/AuroraWright/owocr/"

  app "OwOCR.app"

  zap trash: [
    "~/Library/Application Support/com.aury.owocr",
    "~/Library/Caches/com.aury.owocr",
  ]
end
