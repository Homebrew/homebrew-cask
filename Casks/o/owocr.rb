cask "owocr" do
  arch arm: "applesilicon", intel: "intel"

  version "1.25.0"
  sha256 arm:   "c5722ef8f9e0d1e009e6240ee95738b53928ece0fb15a296be32ae9b344f8b5f",
         intel: "5fda691c4c882eed7242030e78882995020a62ed822455b0de9aaeadd843cc78"

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
