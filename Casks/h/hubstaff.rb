cask "hubstaff" do
  arch arm: "arm64", intel: "x86_64"

  version "1.9.2,12156"
  sha256 arm:   "c47c1fd6250770844cf9a85437861a5e17967a279e90de21f5c5bdb9085c0c8e",
         intel: "4554bbba0da2d5ab1a9f61148fa3b8424c247be4e16ef3beec575dfa4c0c020b"

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
