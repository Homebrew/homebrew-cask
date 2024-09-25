cask "dictionaries" do
  version "2.5"
  sha256 "3e19d77d6d9f43d2b3e97e23541ec8a97eaafdbf26f07276d345fd2a6d78ebfe"

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
