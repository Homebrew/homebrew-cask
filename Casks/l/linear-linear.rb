cask "linear-linear" do
  arch arm: "arm64", intel: "x64"

  version "1.26.2,240719ligbop9dl"
  sha256 arm:   "06ee1e57c65b0f3500ee7552e9dea117f003bd3bbf00ce732155e306a100b4b1",
         intel: "6974d99a70c2cce45bdf0e472a1fe9acbc7f4208903385df49a3cff88380c9d5"

  url "https://download.todesktop.com/200315glz2793v6/Linear%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}-mac.zip",
      verified: "download.todesktop.com/200315glz2793v6/"
  name "Linear"
  desc "App to manage software development and track bugs"
  homepage "https://linear.app/"

  livecheck do
    url "https://download.todesktop.com/200315glz2793v6/latest-mac.yml"
    regex(/Linear\sv?(\d+(?:\.\d+)+)(?:\s-\sBuild\s([a-z\d]+?))?-#{arch}-mac\.zip/)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Linear.app"

  zap trash: [
    "~/Library/Application Support/Linear",
    "~/Library/Caches/com.linear",
    "~/Library/Caches/com.linear.ShipIt",
    "~/Library/Preferences/com.linear.plist",
    "~/Library/Saved Application State/com.linear.savedState",
  ]
end
