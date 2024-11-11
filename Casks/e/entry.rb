cask "entry" do
  version "2.1.20"
  sha256 "050ab016e96014615d948e4b8bb909baad863a242fa0977ef876e31f289daed0"

  url "https://playentry.org/uploads/data/installers/Entry-#{version}.pkg"
  name "entry"
  desc "Block-based coding platform"
  homepage "https://playentry.org/"

  # The download page (https://playentry.org/download/offline) fetches the
  # version information from https://playentry.org/graphql using a `POST`
  # request but livecheck can't do that yet. We check GitHub releases as a best
  # guess of when a new version is released.
  livecheck do
    url "https://github.com/entrylabs/entry-offline"
    strategy :github_latest
  end

  pkg "Entry-#{version}.pkg"

  uninstall pkgutil: "org.playentry.entry"

  zap trash: [
    "~/Library/Application Support/Entry",
    "~/Library/Application Support/entry-hw",
    "~/Library/Preferences/org.playentry.entry.plist",
    "~/Library/Saved Application State/org.playentry.entry.savedState",
  ]
end
