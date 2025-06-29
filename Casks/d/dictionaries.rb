cask "dictionaries" do
  version "2.6"
  sha256 "ad2d40f04227960dcd2eda9253c2079eaaea5827fa4bebf2df02b004cc9a83a1"

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
