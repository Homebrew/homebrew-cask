cask "startupizer" do
  version "2,2060,1527510167"
  sha256 "56792a52fc91129f6f192cbbc0dbc6a7175d0699f2dab726baaf7d94f30ce150"

  url "https://dl.devmate.com/com.gentlebytes.Startupizer#{version.major}/#{version.csv.second}/#{version.csv.third}/Startupizer#{version.major}-#{version.csv.second}.zip",
      verified: "dl.devmate.com/com.gentlebytes.Startupizer#{version.major}/"
  name "Startupizer#{version.major}"
  desc "Login items handler"
  homepage "http://gentlebytes.com/startupizer/"

  deprecate! date: "2025-01-05", because: :discontinued

  app "Startupizer#{version.major}.app"

  zap trash: [
    "~/Library/Caches/com.gentlebytes.Startupizer#{version.major}",
    "~/Library/Preferences/com.gentlebytes.Startupizer#{version.major}.plist",
  ]

  caveats do
    requires_rosetta
  end
end
