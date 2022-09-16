cask "dictionaries" do
  version "1.8,390,1663318178"
  sha256 "90f906f8efc907855e6e170392446bb1734fabc5b4204861206735735a162825"

  url "https://dl.devmate.com/io.dictionaries.Dictionaries/#{version.csv.second}/#{version.csv.third}/Dictionaries-#{version.csv.second}.zip",
      verified: "dl.devmate.com/io.dictionaries.Dictionaries/"
  name "Dictionaries"
  desc "Translate words without ever opening a dictionary"
  homepage "https://dictionaries.io/"

  livecheck do
    url "https://updates.devmate.com/io.dictionaries.Dictionaries.xml"
    regex(%r{/(\d+)/Dictionaries\d*?[_-]v?(\d+(?:\.\d+)*)\.(?:dmg|zip)}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[2]},#{match[1]}"
    end
  end

  app "Dictionaries.app"

  zap trash: [
    "~/Library/Containers/io.dictionaries.Dictionaries",
    "~/Library/Preferences/io.dictionaries.Dictionaries.plist",
  ]
end
