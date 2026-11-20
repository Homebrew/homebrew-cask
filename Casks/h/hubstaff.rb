cask "hubstaff" do
  arch arm: "arm64", intel: "x86_64"

  version "1.9.8,12422"
  sha256 arm:   "27fde624f2dbf9562c0778090008b260baf4cca30dd50b6cf37d216675b4fbd3",
         intel: "91c2bcd1a7733fcaa06d0b4af4025848fa210ffc96d5853b15416cb197cb1d70"

  url "https://app.hubstaff.com/download/#{version.csv.second}-standard-mac-os-x-#{version.csv.first.dots_to_hyphens}-release/dmg?architecture=#{arch}"
  name "Hubstaff"
  desc "Work time tracker"
  homepage "https://hubstaff.com/"

  livecheck do
    url "https://app.hubstaff.com/appcast.xml"
    regex(%r{/(\d+)(?:-standard)?-mac.*?-release}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version.split("-").first},#{match[1]}"
    end
  end

  depends_on :macos

  app "Hubstaff.app"

  zap trash: [
    "~/Library/Application Support/Hubstaff",
    "~/Library/Preferences/com.netsoft.Hubstaff.plist",
  ]
end
