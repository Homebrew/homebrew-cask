cask "linear-linear" do
  arch arm: "arm64", intel: "x64"

  version "1.25.3,240415m1in3z0ad"
  sha256 arm:   "b36bc77f7c1336f050ea69f0912cb96b2c182364c12c295598c88f3bc0150484",
         intel: "8691498344c80ed257a06a59cdeb4291855a80c092d6d91d8d24aceb12451dc0"

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
