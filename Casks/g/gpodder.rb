cask "gpodder" do
  version "3.11.2"
  sha256 "a26050eceee5d08c5e28509d9ffd0a592fc7f921e91129b12dc8e302e00bfb75"

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
