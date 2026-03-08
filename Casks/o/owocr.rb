cask "owocr" do
  arch arm: "applesilicon", intel: "intel"

  version "1.26.1"
  sha256 arm:   "0c97e8d6c9e8bbd115685a077e524462487e2064e95fdcaa12d1a259f95bfb90",
         intel: "bff353debe3ca0a1b1f08e5e606f82fa9f9685ac1bbe7772ed2654c61cf228e2"

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
