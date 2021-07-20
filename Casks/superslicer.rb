cask "superslicer" do
  version "2.3.56.7,210710"
  sha256 "53d7f49d3162427d6355cf6cc8398a875d40de3b84274d548598f51be117c83e"

  url "https://github.com/supermerill/SuperSlicer/releases/download/#{version.before_comma}/SuperSlicer_#{version.before_comma}_macos_#{version.after_comma}.dmg"
  name "SuperSlicer"
  desc "Convert 3D models into G-code instructions or PNG layers"
  homepage "https://github.com/supermerill/SuperSlicer"

  livecheck do
    url "https://github.com/supermerill/SuperSlicer/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/SuperSlicer_(\d+(?:\.\d+)*)_macos_(\d+)\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "SuperSlicer.app"

  zap trash: "~/Library/Application Support/SuperSlicer"
end
