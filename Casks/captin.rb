cask "captin" do
  version "1.1.3,143,1619187317"
  sha256 "15854fad5bd0c0303649c1c53561a0ba9c02e6e2ffcfbd492df4b522c800d543"

  url "https://dl.devmate.com/com.100hps.captin/#{version.csv.second}/#{version.csv.third}/Captin-#{version.csv.second}.dmg",
      verified: "dl.devmate.com/com.100hps.captin/"
  name "Captin"
  desc "Tool to show caps lock status"
  homepage "http://captin.strikingly.com/"

  livecheck do
    url "https://updates.devmate.com/com.100hps.captin.xml"
    regex(%r{/(\d+)/Captin\d*?[_-]v?(\d+(?:\.\d+)*)\.(?:dmg|zip)}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[2]},#{match[1]}"
    end
  end

  app "Captin.app"

  uninstall quit: "com.100hps.captin"

  zap trash: [
    "~/Library/Caches/com.100hps.captin",
    "~/Library/Preferences/com.100hps.captin.plist",
  ]
end
