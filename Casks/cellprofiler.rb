cask "cellprofiler" do
  version "4.0.3"
  sha256 "33A3165517CFE42AED60864875E22BED1D781EE9FFDD5D848B1CCAA8ABCD2631"

  # cellprofiler-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://cellprofiler-releases.s3.amazonaws.com/CellProfiler-macOS-#{version}.zip"
  appcast "https://github.com/CellProfiler/CellProfiler/releases.atom"
  name "CellProfiler"
  desc "Open-source application for biological image analysis"
  homepage "https://cellprofiler.org/"

  app "CellProfiler.app"
end
