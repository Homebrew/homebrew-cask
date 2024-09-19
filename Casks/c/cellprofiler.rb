cask "cellprofiler" do
  version "4.2.8"
  sha256 "16d898559064a51f83818a2c5f1d8d0fd04339a90183a60415099cf420b4f369"

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
