cask "hubstaff" do
  version "1.6.17,6448"
  sha256 "2541dc188d1ef41924e1712af3e7840cfcb8f39ad0d3057d0c8084d1fe3c17a6"

  url "https://app.hubstaff.com/download/#{version.csv.second}-standard-mac-os-x-#{version.csv.first.dots_to_hyphens}-release"
  name "Hubstaff"
  desc "Work time tracker"
  homepage "https://hubstaff.com/"

  livecheck do
    url "https://app.hubstaff.com/appcast.xml"
    strategy :sparkle do |item|
      "#{item.short_version.split("-").first},#{item.url[%r{/(\d+)(?:-standard)?-mac.*?-release}i, 1]}"
    end
  end

  app "Hubstaff.app"

  zap trash: [
    "~/Library/Application Support/Hubstaff",
    "~/Library/Preferences/com.netsoft.Hubstaff.plist",
  ]
end
