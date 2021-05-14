cask "axe-edit-iii" do
  version "1.08.14"
  sha256 "592adcbee058c2a4628efa29067f34ee5248a520922989563b3c026228e40261"

  url "https://www.fractalaudio.com/downloads/Axe-Edit-III/Axe-Edit-III-OSX-v#{version.tr(".", "p")}.dmg"
  name "Axe-Edit III"
  desc "Editor software for the AXE-FX III"
  homepage "https://www.fractalaudio.com/axe-fx-iii-edit/"

  livecheck do
    url "https://www.fractalaudio.com/axe-fx-iii-edit/"
    strategy :page_match do |page|
      v = page[%r{href=.*?/Axe-Edit-III-OSX-v(\d+(?:p\d+)*)\.dmg}i, 1]
      v.tr("p", ".")
    end
  end

  app "Axe-Edit III.app"

  zap trash: "~/Library/Application Support/Fractal Audio/Axe-Edit III"
end
