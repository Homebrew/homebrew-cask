cask "gpodder" do
  version "3.11.1"
  sha256 "3b8eb0b27a8fa3bcd27e6a57f2a6c7a8e264e50175da5e0d95c518f565bb9c05"

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
