cask "reunion" do
  version "13.0.0,210324unr"
  sha256 "63104e8d7bbb9b9e9895d96511b2efa419abfacbc42fe5f5755353f645b382ae"

  url "https://store.leisterpro.com/updates/reunion#{version.major}/Reunion-#{version.before_comma.dots_to_hyphens}-#{version.after_comma}.zip"
  name "Reunion"
  homepage "https://www.leisterpro.com/"

  livecheck do
    url "https://store.leisterpro.com/updates/reunion#{version.major}/appcast.xml"
    strategy :sparkle do |item|
      match = item.url.match(%r{/Reunion-(\d+(?:-\d+)*)-(\d+.*?)\.zip}i)
      "#{match[1].tr("-", ".")},#{match[2]}"
    end
  end

  app "Reunion #{version.major}.app"
end
