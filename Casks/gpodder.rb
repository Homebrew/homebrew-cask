cask "gpodder" do
  version "3.10.21"
  sha256 "a6b62428f28f0a06f3d8359999594688ddd38e1b3c7c22eb51dfadf0f39cf5a4"

  url "https://github.com/gpodder/gpodder/releases/download/#{version}/macOS-gPodder-#{version}.zip",
      verified: "github.com/gpodder/gpodder/"
  name "gPodder"
  desc "Podcast client"
  homepage "https://gpodder.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "gPodder.app"

  zap trash: "~/Library/Application Support/gPodder"
end
