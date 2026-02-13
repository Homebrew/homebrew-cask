cask "owocr" do
  arch arm: "applesilicon", intel: "intel"

  version "1.24.4"
  sha256 arm:   "f2074ed6ee3d8d7327c2680e6ba7dfce72befed2cac068c4b282b7c559d03653",
         intel: "e3ce0b2926595d7a46c2cad51ba47b891b43015f30f83b4003d5b55d34b020ea"

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
