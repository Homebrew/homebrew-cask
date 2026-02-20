cask "owocr" do
  arch arm: "applesilicon", intel: "intel"

  version "1.25.1"
  sha256 arm:   "add505753a3b0431136bad409aa33c61d31a38b3c6b37676ac9ffdaf440d085c",
         intel: "ea4276cc9143f6adcbd6e94b91ac8d0e49fbfd970a8896fb7ab34e97a1d9eab7"

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
