cask "superslicer" do
  arch = Hardware::CPU.intel? ? "" : "arm_"

  version "2.3.57.10,220203"

  if Hardware::CPU.intel?
    sha256 "88deb50dd1c0abb85a360a56b944443b81e1a4bb3be4801b900f37b96cba2354"
  else
    sha256 "553f4d069d856418e6d22b65f107d6d77ed59224171a5fcf233cdb6ca050d3d9"
  end

  url "https://github.com/supermerill/SuperSlicer/releases/download/#{version.csv.first}/SuperSlicer_#{version.csv.first}_macos_#{arch}#{version.csv.second}.dmg"
  name "SuperSlicer"
  desc "Convert 3D models into G-code instructions or PNG layers"
  homepage "https://github.com/supermerill/SuperSlicer"

  livecheck do
    url "https://github.com/supermerill/SuperSlicer/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/SuperSlicer_(\d+(?:\.\d+)+)_macos_(\d+)\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "SuperSlicer.app"

  zap trash: "~/Library/Application Support/SuperSlicer"
end
