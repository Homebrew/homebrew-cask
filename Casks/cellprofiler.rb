cask "cellprofiler" do
  version "4.2.4"
  sha256 "09661c3318496c0e6c3e61450f67d311e24866a861effa344a8462772977e19b"

  url "https://github.com/CellProfiler/CellProfiler/releases/download/v#{version}/CellProfiler-macOS-#{version}.zip",
      verified: "github.com/CellProfiler/CellProfiler/"
  name "CellProfiler"
  desc "Open-source application for biological image analysis"
  homepage "https://cellprofiler.org/"

  livecheck do
    url "https://github.com/CellProfiler/CellProfiler"
    strategy :github_latest
  end

  app "CellProfiler.app"
end
