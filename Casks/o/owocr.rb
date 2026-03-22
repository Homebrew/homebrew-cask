cask "owocr" do
  arch arm: "applesilicon", intel: "intel"

  version "1.26.6"
  sha256 arm:   "0dc2b07d32a288f3b75e1c1b26625b3675ac857c729db44e250308936278e29c",
         intel: "3e5168003801214b7b818cccb9f20148032a8e9e850edca053f0e4818745dbf1"

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
