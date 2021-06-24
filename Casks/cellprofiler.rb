cask "cellprofiler" do
  version "4.2.0"
  sha256 "d111ad4d389da6a442eaac085ec058937c0bb7cef62ea55ba1b1e1125907f250"

  url "https://cellprofiler-releases.s3.amazonaws.com/CellProfiler-macOS-#{version}.zip",
      verified: "cellprofiler-releases.s3.amazonaws.com/"
  name "CellProfiler"
  desc "Open-source application for biological image analysis"
  homepage "https://cellprofiler.org/"

  livecheck do
    url "https://github.com/CellProfiler/CellProfiler"
    strategy :github_latest
  end

  app "CellProfiler.app"
end
