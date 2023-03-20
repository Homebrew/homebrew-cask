cask "gamma-control" do
  version "6.3.4"
  sha256 "69c38595eca643ef46f8379324f4db5e3443f384fda6dee46bc73a8212d51cd0"

  url "https://littoral.michelf.ca/apps/gamma-control/gamma-control-#{version}.zip"
  name "Gamma Control"
  desc "Per-screen color adjustments"
  homepage "https://michelf.ca/projects/gamma-control/"

  livecheck do
    url :homepage
    regex(/href=.*?gamma[._-]control[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "Gamma Control.app"

  zap trash: [
    "~/Library/Application Scripts/ca.michelf.GammaControl.*",
    "~/Library/Containers/ca.michelf.GammaControl.*",
  ]
end
