cask "hubstaff" do
  arch arm: "arm64", intel: "x86_64"

  version "1.9.6,12322"
  sha256 arm:   "f795e01fb8962bd2d2ff967ced823ec06757e32a1f8b2b308e1e890ac298320c",
         intel: "f6a93a55712c6396d5b457858a068275a94ca3433ab6caa21053c3cd9d5e6e8b"

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
