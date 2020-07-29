cask "dictionaries" do
  version "1.5,344:1590512627"
  sha256 "ddf7dbc5b4998c594579c855dac3738c21a422319b6258f7c6e0136bca9504e8"

  # dl.devmate.com/io.dictionaries.Dictionaries/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/io.dictionaries.Dictionaries/#{version.after_comma.before_colon}/#{version.after_colon}/Dictionaries-#{version.after_comma.before_colon}.zip"
  appcast "https://updates.devmate.com/io.dictionaries.Dictionaries.xml"
  name "Dictionaries"
  homepage "https://dictionaries.io/"

  app "Dictionaries.app"
end
