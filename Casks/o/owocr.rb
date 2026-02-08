cask "owocr" do
  arch arm: "applesilicon", intel: "intel"

  version "1.24.3"
  sha256 arm:   "9f126af6742f1bc1b49cf510e8ef9a1b1c5719356fe511b18f80a4fedefc0c04",
         intel: "24ce8ed6d5df586bc199ac1cf88e9a8d6c57141c4972f9da0e303370498d0017"

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
