cask "owocr" do
  arch arm: "applesilicon", intel: "intel"

  version "1.26.5"
  sha256 arm:   "0399f13a2f8419d0625b093738851a1ecaa804908d466ddac1d229f7039c2808",
         intel: "35ff18eea62243f43b221f6b23ff95afddd5317ac50945cc90cdef72f6a777c4"

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
