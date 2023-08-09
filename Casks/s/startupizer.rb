cask "startupizer" do
  version "2,2060,1527510167"
  sha256 "56792a52fc91129f6f192cbbc0dbc6a7175d0699f2dab726baaf7d94f30ce150"

  url "https://dl.devmate.com/com.gentlebytes.Startupizer#{version.major}/#{version.csv.second}/#{version.csv.third}/Startupizer#{version.major}-#{version.csv.second}.zip",
      verified: "dl.devmate.com/com.gentlebytes.Startupizer#{version.major}/"
  name "Startupizer#{version.major}"
  desc "Login items handler"
  homepage "http://gentlebytes.com/startupizer/"

  livecheck do
    url "https://updates.devmate.com/com.gentlebytes.Startupizer#{version.major}.xml"
    regex(%r{/(\d+)/Startupizer(\d+?)[_-]v?(\d+(?:\.\d+)*)\.(?:dmg|zip)}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{match[2]},#{match[3]},#{match[1]}"
    end
  end

  app "Startupizer#{version.major}.app"

  zap trash: [
    "~/Library/Caches/com.gentlebytes.Startupizer#{version.major}",
    "~/Library/Preferences/com.gentlebytes.Startupizer#{version.major}.plist",
  ]
end
