cask "superslicer" do
  arch = Hardware::CPU.intel? ? "" : "arm_"

  version "2.3.57.9,220105"

  if Hardware::CPU.intel?
    sha256 "ef30236e2a1de56f2300c3771fc4409f15fbfb18ecc2d921198f91e4a6f83614"
  else
    sha256 "e6bbe074ce1a7cebe82f6de1d14947f5e519d3c032267f3fd4104d7fd11f3e88"
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
