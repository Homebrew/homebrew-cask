cask "dictionaries" do
  version "2.3"
  sha256 "49fb02bf7186f5e970453b735eb226a9013cc4116b776c12d28e6c45876745b5"

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
