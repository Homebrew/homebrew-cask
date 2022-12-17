cask "cellprofiler" do
  version "4.2.5"
  sha256 "f2d123c3f2f6c8171c05ad67f2e5d80db0267f9e1235b667950c5a218354306d"

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
