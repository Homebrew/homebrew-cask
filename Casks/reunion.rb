cask "reunion" do
  version "13.0.0,210503unr"
  sha256 "1e482f77eb2862a942f001470aaf706fc604f3197a11f08897bf5c8cfe2dd43c"

  url "https://store.leisterpro.com/updates/reunion#{version.major}/Reunion-#{version.before_comma.dots_to_hyphens}-#{version.after_comma}.zip"
  name "Reunion"
  desc "Genealogy (family tree) app"
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
