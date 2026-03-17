cask "owocr" do
  arch arm: "applesilicon", intel: "intel"

  version "1.26.4"
  sha256 arm:   "bd2c1af491c33af3c0bf3224614d282a8f25130bbc026094c0f08ded9063a8d0",
         intel: "8eaea49f77f193422a06dc1ce4ebd2833915c081d5a2bf5915792132ffa64fca"

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
