cask "dictionaries" do
  version "1.6,353:1604925075"
  sha256 "c7735980e5c473d2765bb9b0832df0788f839bb674e3b732104cd7ef5a1caad5"

  url "https://dl.devmate.com/io.dictionaries.Dictionaries/#{version.after_comma.before_colon}/#{version.after_colon}/Dictionaries-#{version.after_comma.before_colon}.zip",
      verified: "dl.devmate.com/io.dictionaries.Dictionaries/"
  appcast "https://updates.devmate.com/io.dictionaries.Dictionaries.xml"
  name "Dictionaries"
  homepage "https://dictionaries.io/"

  app "Dictionaries.app"
end
