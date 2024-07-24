cask "ibettercharge" do
  version "1.0.12,1568119585"
  sha256 "33de59c5a1157b23f9313348ef60e213200d007e2b16c4f53859ddcb4c66d696"

  url "https://dl.devmate.com/com.softorino.iBetterCharge/#{version.csv.first}/#{version.csv.second}/iBetterCharge-#{version.csv.first}.zip",
      verified: "devmate.com/com.softorino.iBetterCharge/"
  name "iBetterCharge"
  desc "Battery level monitoring software"
  homepage "https://softorino.com/ibettercharge/"

  livecheck do
    url "https://updates.devmate.com/com.softorino.iBetterCharge.xml"
    regex(%r{/(\d+)/iBetterCharge\d*?[_-]v?(\d+(?:\.\d+)*)\.(?:dmg|zip)}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  app "iBetterCharge.app"

  caveats do
    requires_rosetta
  end
end
