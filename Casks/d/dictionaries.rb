cask "dictionaries" do
  version "2.1"
  sha256 "34248976ae7409e4334a31553cffd6ada4bebd345bcb289d6e6a4452b9e5d3b6"

  url "https://download.dictionaries.io/mac/Dictionaries-#{version}.zip"
  name "Dictionaries"
  desc "Translate words without ever opening a dictionary"
  homepage "https://dictionaries.io/"

  livecheck do
    url "https://dictionaries.io/updates/mac/v2/appcast"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :mojave"

  app "Dictionaries.app"

  zap trash: [
    "~/Library/Containers/io.dictionaries.Dictionaries",
    "~/Library/Preferences/io.dictionaries.Dictionaries.plist",
  ]
end
