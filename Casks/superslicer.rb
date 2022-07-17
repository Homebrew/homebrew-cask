cask "superslicer" do
  arch = Hardware::CPU.intel? ? "" : "arm_"

  version "2.4.58.3,220714"

  if Hardware::CPU.intel?
    sha256 "4fb4a65d2f56bf75867257ea40a7b32515fbb598e992c69ee8a94ef4579781c5"
  else
    sha256 "a389e53f4c8c3228933618f71842a16c96033a1dd74199337641df99f6b7f5b1"
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
