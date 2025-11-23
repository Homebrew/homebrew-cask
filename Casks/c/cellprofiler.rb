cask "cellprofiler" do
  version "4.2.8"
  sha256 "bb9bf8e90cb0271453ec3e77d5f55e923a0d98485d99bde4a877130978efc52c"

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

  zap trash: [
    "~/Library/Caches/org.cellprofiler.CellProfiler",
    "~/Library/Preferences/CellProfilerLocal.cfg",
    "~/Library/Preferences/org.cellprofiler.CellProfiler.plist",
    "~/Library/Saved Application State/org.cellprofiler.CellProfiler.savedState",
    "~/Library/Webkit/org.cellprofiler.CellProfiler",
  ]

  caveats do
    requires_rosetta
  end
end
