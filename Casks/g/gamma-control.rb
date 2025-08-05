cask "gamma-control" do
  version "6.3.5"
  sha256 "dc4d44f8b74ff6f12a718356d10cd37f083c5c1b42ccb3ecfe00a0177c2953fe"

  url "https://littoral.michelf.ca/apps/gamma-control/gamma-control-#{version}.zip"
  name "Gamma Control"
  desc "Per-screen colour adjustments"
  homepage "https://michelf.ca/projects/gamma-control/"

  livecheck do
    url :homepage
    regex(/href=.*?gamma[._-]control[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Gamma Control.app"

  zap trash: [
    "~/Library/Application Scripts/ca.michelf.GammaControl.*",
    "~/Library/Containers/ca.michelf.GammaControl.*",
  ]
end
