cask "hubstaff" do
  version "1.6.12,5358"
  sha256 "354fb140e11447974ce9360902f1ed160d4f89cdd403839eb18932a52a25b9f8"

  url "https://app.hubstaff.com/download/#{version.csv.second}-mac-os-x-#{version.csv.first.dots_to_hyphens}-release"
  name "Hubstaff"
  desc "Work time tracker"
  homepage "https://hubstaff.com/"

  livecheck do
    url "https://app.hubstaff.com/appcast.xml"
    strategy :sparkle do |item|
      "#{item.short_version.split("-").first},#{item.url[%r{/(\d+)[._-]standard[._-]mac[._-]os[._-]x[._-]v?(?:\d(?:-\d+)*)[._-]release}i, 1]}"
    end
  end

  app "Hubstaff.app"

  zap trash: [
    "~/Library/Application Support/Hubstaff",
    "~/Library/Preferences/com.netsoft.Hubstaff.plist",
  ]
end
