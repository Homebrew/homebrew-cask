cask "hubstaff" do
  arch arm: "arm64", intel: "x86_64"

  version "1.9.10,12554"
  sha256 arm:   "29001d2694fddc86ad5ab6f5465737845b189fec4d56c1322732da3441fae430",
         intel: "0aa2e4379481a0f3a1896773b029a51ede8f41d1c1eff76b8ede7b264c165b14"

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

      release_version = item.short_version.split("-").first
      "#{release_version},#{match[1]}"
    end
  end

  depends_on :macos

  app "Hubstaff.app"

  zap trash: [
    "~/Library/Application Support/Hubstaff",
    "~/Library/Preferences/com.netsoft.Hubstaff.plist",
  ]
end
