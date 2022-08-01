cask "superslicer" do
  arch = Hardware::CPU.intel? ? "" : "arm_"

  if Hardware::CPU.intel?
    version "2.4.58.3,220714"
    sha256 "4fb4a65d2f56bf75867257ea40a7b32515fbb598e992c69ee8a94ef4579781c5"
  else
    version "2.4.58.3,220715"
    sha256 "c1cfb77477e0ddaddbafbdfa9e31a345a8da590790350aca23c180fd081c645a"
  end

  url "https://github.com/supermerill/SuperSlicer/releases/download/#{version.csv.first}/SuperSlicer_#{version.csv.first}_macos_#{arch}#{version.csv.second}.dmg"
  name "SuperSlicer"
  desc "Convert 3D models into G-code instructions or PNG layers"
  homepage "https://github.com/supermerill/SuperSlicer"

  livecheck do
    url "https://github.com/supermerill/SuperSlicer/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/SuperSlicer_(\d+(?:\.\d+)+)_macos_#{arch}(\d+)\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on formula: "zstd"

  app "SuperSlicer.app"

  zap trash: "~/Library/Application Support/SuperSlicer"
end
