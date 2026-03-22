cask "owocr" do
  arch arm: "applesilicon", intel: "intel"

  version "1.26.7"
  sha256 arm:   "e390d6fdb60d9eb4fd8bdf5a9e31be07bf481fd82b05a730e8fb5f6813dd6f02",
         intel: "35ee0d960f89a9141eccff05788f6612efca9a98c30598fd92f62f80426ae79e"

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
