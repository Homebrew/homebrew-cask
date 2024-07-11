cask "gpodder" do
  version "3.11.4"
  sha256 "e7388bacf7281e1ca5d853c56746ea4ebd7a16ecea4d59a6ee0b593e072ae0ec"

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

  caveats do
    requires_rosetta
  end
end
