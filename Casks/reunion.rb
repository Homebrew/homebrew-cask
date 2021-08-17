cask "reunion" do
  version "13.0.0,210616unr"
  sha256 "d7e57f5c79a3a146c139071d18994d089ae0fd5f966329b1a2ccce977228c714"

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
