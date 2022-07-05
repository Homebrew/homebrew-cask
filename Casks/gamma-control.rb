cask "gamma-control" do
  version "6.3.3"
  sha256 "81729e238e39666f1c6eda8f9c4476fbc02c81f394c4003a184aa41fdb9b87ea"

  url "https://littoral.michelf.ca/apps/gamma-control/gamma-control-#{version}.zip"
  name "Gamma Control"
  desc "Per-screen color adjustments"
  homepage "https://michelf.ca/projects/gamma-control/"

  livecheck do
    url :homepage
    regex(/href=.*?gamma-control[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "Gamma Control.app"

  zap trash: [
    "~/Library/Application Scripts/ca.michelf.GammaControl.*",
    "~/Library/Containers/ca.michelf.GammaControl.*",
  ]
end
