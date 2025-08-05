cask "hdfview" do
  version "3.3.2"
  sha256 "40d111afc43fe9f1138692d1fb40c1330ea4f4416a2163e5dc4b4c398fb779bf"

  url "https://github.com/HDFGroup/hdfview/releases/download/v#{version}/HDFView-#{version}-Darwin.tar.gz",
      verified: "github.com/HDFGroup/hdfview/"
  name "HDFView"
  desc "Tool for browsing and editing HDF files"
  homepage "https://www.hdfgroup.org/download-hdfview/"

  # The "latest" release on GitHub is set to the `snapshot` release instead of
  # the latest stable version. This checks the version from the filename text
  # on the homepage, so we don't have to use the `GithubReleases` strategy. If
  # we used `GithubReleases`, we would have to create a somewhat involved
  # `strategy` block to avoid releases where part of the version is 99, as
  # upstream doesn't always reliably mark those versions as "pre-release" (e.g.
  # `HDFView-3.3.99` isn't marked as pre-release).
  livecheck do
    url :homepage
    regex(/HDFView[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end

  depends_on macos: ">= :el_capitan"
  container nested: "HDFView-#{version}.dmg"

  app "HDFView.app"

  zap trash: [
    "~/.hdfview*",
    "~/Library/Preferences/HDFView.hdfgroup.org.plist",
    "~/Library/Saved Application State/hdf.view.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
