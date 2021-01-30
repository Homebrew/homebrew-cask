cask "finicky" do
  version "3.2.0"
  sha256 "c505485d044a2f87841290c68f62c4ea923fd669bfa096e0e5e3d3f49ff3eb8f"

  url "https://github.com/johnste/finicky/releases/download/v#{version}/Finicky.zip"
  name "Finicky"
  desc "Utility for customizing which browser to start"
  homepage "https://github.com/johnste/finicky"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "Finicky.app"
end
