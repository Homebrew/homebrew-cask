cask "dictionaries" do
  version "1.7,382,1615218055"
  sha256 "fa5db82ef3927a3440e46f5190163c6ffcba4a073e6aeb8a12ba4d347c594581"

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
