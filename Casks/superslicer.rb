cask "superslicer" do
  arch arm: "arm", intel: "intel"

  version "2.4.58.4,220811"
  sha256 arm:   "ddd5f3822c69faefc31124fad194c536d6c4f0ea661e7e5427559c4ba9c4c1f4",
         intel: "594f10459f4d3b2081ae89ef170bc9aa9ad13ebe62bbf2acac3311c58c114026"

  url "https://github.com/supermerill/SuperSlicer/releases/download/#{version.csv.first}/SuperSlicer_#{version.csv.first}_macos_#{arch}_#{version.csv.second}.dmg"
  name "SuperSlicer"
  desc "Convert 3D models into G-code instructions or PNG layers"
  homepage "https://github.com/supermerill/SuperSlicer"

  livecheck do
    url "https://github.com/supermerill/SuperSlicer/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/SuperSlicer_(\d+(?:\.\d+)+)_macos_#{arch}_(\d+)\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on formula: "zstd"

  app "SuperSlicer.app"

  zap trash: "~/Library/Application Support/SuperSlicer"
end
