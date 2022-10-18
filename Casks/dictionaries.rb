cask "dictionaries" do
  version "2.0,421"
  sha256 "bdddac7d12b9a30a1bea5d7150a2fa41b83461fbfcc8d3b6ae2fb99d4fe2b20e"

  url "https://download.dictionaries.io/mac/Dictionaries-#{version.csv.first}.zip"
  name "Dictionaries"
  desc "Translate words without ever opening a dictionary"
  homepage "https://dictionaries.io/"

  livecheck do
    url "https://dictionaries.io/updates/mac/v2/appcast"
    strategy :sparkle
  end

  app "Dictionaries.app"

  zap trash: [
    "~/Library/Containers/io.dictionaries.Dictionaries",
    "~/Library/Preferences/io.dictionaries.Dictionaries.plist",
  ]
end
