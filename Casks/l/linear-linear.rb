cask "linear-linear" do
  arch arm: "arm64", intel: "x64"

  version "1.27.6,250204gu0226ck2"
  sha256 arm:   "08afa8d024e15d053f022b3a68be9c936bafb46cb6b34fbcefe566c328875ad3",
         intel: "cf9eec22f87c5f2c5a9393031481c5f6678a82a3b8f6e94ed92c0397959d213f"

  url "https://download.todesktop.com/200315glz2793v6/Linear%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}-mac.zip",
      verified: "download.todesktop.com/200315glz2793v6/"
  name "Linear"
  desc "App to manage software development and track bugs"
  homepage "https://linear.app/"

  livecheck do
    url "https://download.todesktop.com/200315glz2793v6/latest-mac.yml"
    regex(/Linear\sv?(\d+(?:\.\d+)+)(?:\s-\sBuild\s([a-z\d]+?))?-#{arch}-mac\.zip/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Linear.app"

  zap trash: [
    "~/Library/Application Support/Linear",
    "~/Library/Caches/com.linear",
    "~/Library/Caches/com.linear.ShipIt",
    "~/Library/Preferences/com.linear.plist",
    "~/Library/Saved Application State/com.linear.savedState",
  ]
end
