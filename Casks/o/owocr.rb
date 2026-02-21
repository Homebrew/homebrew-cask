cask "owocr" do
  arch arm: "applesilicon", intel: "intel"

  version "1.25.2"
  sha256 arm:   "1a620df619086f7e6c953917927e6839d7bfba305dee27b0ceb14b5d71679c5c",
         intel: "507dc801d2c69d2b80725378cfe75ebcc51f08c50762fea41a7dacb315b3ace6"

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
