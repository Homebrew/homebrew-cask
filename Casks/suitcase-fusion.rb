cask "suitcase-fusion" do
  version "21.3.0"
  sha256 "ef5b3340385f7823d05b72172526286787583ee82ad9b4ef45a92adc3b6c7114"

  url "https://bin.extensis.com/SuitcaseFusion-M-#{version.dots_to_hyphens}.dmg"
  name "Extensis Suitcase Fusion"
  homepage "https://www.extensis.com/suitcase-fusion/"

  livecheck do
    url "https://www.extensis.com/support/suitcase-fusion-#{version.major}/release-notes/"
    strategy :page_match
    regex(/Current\s*version:\s*(\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Suitcase Fusion.app"
end
