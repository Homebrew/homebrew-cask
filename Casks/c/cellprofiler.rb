cask "cellprofiler" do
  version "4.2.7"
  sha256 "4b66f0ad54d1a5152732311f15ccd282f1ab838c37158f1accc44d402b55c43d"

  url "https://github.com/CellProfiler/CellProfiler/releases/download/v#{version}/CellProfiler-macOS-#{version}.zip",
      verified: "github.com/CellProfiler/CellProfiler/"
  name "CellProfiler"
  desc "Open-source application for biological image analysis"
  homepage "https://cellprofiler.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "CellProfiler.app"

  caveats do
    requires_rosetta
  end
end
