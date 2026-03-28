cask "owocr" do
  arch arm: "applesilicon", intel: "intel"

  version "1.26.8"
  sha256 arm:   "61fa4060365e73bde2eaa1fa51e8a4cffa8a7aaaddff12619c9fa42cdd431c68",
         intel: "8f44cfc5e5de0afded40ff0871dd10cadb778c6802e78461d6b5a0bd8cc4ac0b"

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
