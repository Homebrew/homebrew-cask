cask "hubstaff" do
  version "1.6.15,5919"
  sha256 "5825a49397263eab16bafe9143e35b0a25532c3f3688e8331778516b12de4336"

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
