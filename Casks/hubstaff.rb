cask "hubstaff" do
  version "1.6.11,4995"
  sha256 "11c6eb17c7a7e6ae35cba4764e36a7ea7b6a78432b2e9b464cd2b229e8f81c22"

  url "https://app.hubstaff.com/download/#{version.csv.second}-mac-os-x-#{version.csv.first.dots_to_hyphens}-release"
  name "Hubstaff"
  desc "Work time tracker"
  homepage "https://hubstaff.com/"

  livecheck do
    url "https://app.hubstaff.com/appcast.xml"
    strategy :sparkle do |item|
      "#{item.short_version.split("-").first},#{item.url[%r{/(\d+)-mac-os-x-(?:\d(?:-\d+)*)-release}i, 1]}"
    end
  end

  app "Hubstaff.app"

  zap trash: [
    "~/Library/Application Support/Hubstaff",
    "~/Library/Preferences/com.netsoft.Hubstaff.plist",
  ]
end
