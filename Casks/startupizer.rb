cask "startupizer" do
  version "2,2060:1527510167"
  sha256 "56792a52fc91129f6f192cbbc0dbc6a7175d0699f2dab726baaf7d94f30ce150"

  url "https://dl.devmate.com/com.gentlebytes.Startupizer#{version.major}/#{version.after_comma.before_colon}/#{version.after_colon}/Startupizer#{version.major}-#{version.after_comma.before_colon}.zip",
      verified: "dl.devmate.com/com.gentlebytes.Startupizer#{version.major}/"
  name "Startupizer#{version.major}"
  desc "Login items handler"
  homepage "http://gentlebytes.com/startupizer/"

  livecheck do
    url "https://updates.devmate.com/com.gentlebytes.Startupizer#{version.major}.xml"
    strategy :sparkle do |item|
      match = item.url.match(%r{/(\d+)/Startupizer(\d+)-\d+\.zip}i)
      "#{match[2]},#{item.version}:#{match[1]}"
    end
  end

  app "Startupizer#{version.major}.app"

  zap trash: [
    "~/Library/Caches/com.gentlebytes.Startupizer#{version.major}",
    "~/Library/Preferences/com.gentlebytes.Startupizer#{version.major}.plist",
  ]
end
