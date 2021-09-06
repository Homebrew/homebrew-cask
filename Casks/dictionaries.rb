cask "dictionaries" do
  version "1.7,382:1615218055"
  sha256 "fa5db82ef3927a3440e46f5190163c6ffcba4a073e6aeb8a12ba4d347c594581"

  url "https://dl.devmate.com/io.dictionaries.Dictionaries/#{version.after_comma.before_colon}/#{version.after_colon}/Dictionaries-#{version.after_comma.before_colon}.zip",
      verified: "dl.devmate.com/io.dictionaries.Dictionaries/"
  name "Dictionaries"
  homepage "https://dictionaries.io/"

  livecheck do
    url "https://updates.devmate.com/io.dictionaries.Dictionaries.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}:#{item.url[%r{/(\d+)/Dictionaries-\d+\.zip}i, 1]}"
    end
  end

  app "Dictionaries.app"
end
