cask "superslicer" do
  arch arm: "_arm"

  version "2.5.59.9,240430"
  sha256 arm:   "1c3effee119dcd43d9ab560e6f1131b7389d8bdf096220a21e8e759c1faf5cf4",
         intel: "86f5d9e6f762a98ad0b650659bf1c8547c4838aca3a7bd7d4f2e7ecd021b8fbb"

  url "https://github.com/supermerill/SuperSlicer/releases/download/#{version.csv.first}/SuperSlicer_#{version.csv.first}_macos#{arch}_#{version.csv.second}.dmg"
  name "SuperSlicer"
  desc "Convert 3D models into G-code instructions or PNG layers"
  homepage "https://github.com/supermerill/SuperSlicer"

  livecheck do
    skip "Requires checking separate GitHub release asset list HTML"
  end

  depends_on formula: "zstd"

  app "SuperSlicer.app"

  zap trash: "~/Library/Application Support/SuperSlicer"
end
