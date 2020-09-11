cask "cellprofiler" do
  version "4.0.2"
  sha256 "58127c63e8ce5a5ab255756699edd6ec92b26c6d24cd98affb36cb5240ad8a6b"

  # cellprofiler-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://cellprofiler-releases.s3.amazonaws.com/CellProfiler-macOS-#{version}.zip"
  appcast "https://github.com/CellProfiler/CellProfiler/releases.atom"
  name "CellProfiler"
  homepage "https://cellprofiler.org/"

  app "CellProfiler.app"
end
