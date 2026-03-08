cask "owocr" do
  arch arm: "applesilicon", intel: "intel"

  version "1.26.2"
  sha256 arm:   "b4218b0e11f7f56ae633e908a5391f8419aaa79fa29d1a4de5edd7e586a7a40e",
         intel: "fe9f898cd92f9643dd0a4b364bc4edb5d074342388ac071047fab4f3fed87644"

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
