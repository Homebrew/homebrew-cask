cask "gpodder" do
  version "3.10.19"
  sha256 "f6bf848e14d95f933490e601677674a6afedd169ad21c2b954638c0fb9140de9"

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
