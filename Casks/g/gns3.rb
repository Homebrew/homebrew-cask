cask "gns3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "3.0.4"
  sha256 "08165cc66d533ceaaf5e9586179b17d6a8b8c6b5f8dd7fc5cb807bd54ff17773"

  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg",
      verified: "github.com/GNS3/gns3-gui/"
  name "GNS3"
  name "Graphical Network Simulator 3"
  desc "GUI for the Dynamips Cisco router emulator"
  homepage "https://www.gns3.com/"

  # Upstream creates releases for multiple major versions and the "latest"
  # release isn't guaranteed to be the highest version, so we have to use the
  # `GithubReleases` strategy. Unfortunately, the download page on www.gns3.com
  # simply uses the "latest" GitHub release version, so it's also affected.
  livecheck do
    url :url
    strategy :github_releases
  end

  depends_on macos: ">= :monterey"

  app "GNS3.app"

  zap trash: [
    "~/GNS3",
    "~/Library/Saved Application State/net.gns3.savedState",
  ]
end
