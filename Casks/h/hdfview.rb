cask "hdfview" do
  arch arm: "arm64", intel: "x86_64"

  version "3.4.1"
  sha256 arm:   "a1669bb6cbd32f65cfd3f0c1839a094cd29bcec1ad3697cfb95d704dfaefd603",
         intel: "776a87f2f6106d8b10183c8976aec303da88518de0412fa0440d433d95596c03"

  url "https://github.com/HDFGroup/hdfview/releases/download/v#{version}/HDFView-#{version}App-Darwin-#{arch}.tar.gz",
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
    regex(/HDFView[._-]v?(\d+(?:\.\d+)+)[._-]?App[._-]Darwin[._-]#{arch}\.t/i)
  end

  app "HDFView.app"

  zap trash: [
    "~/.hdfview*",
    "~/Library/Preferences/HDFView.hdfgroup.org.plist",
    "~/Library/Saved Application State/hdf.view.savedState",
  ]
end
