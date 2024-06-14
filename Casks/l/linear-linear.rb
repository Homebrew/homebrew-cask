cask "linear-linear" do
  arch arm: "arm64", intel: "x64"

  version "1.26.0,240614qxzhackvb"
  sha256 arm:   "b2df441a43a7172a0ae7b5ac6086d154e555328c0cc029de6cd76d0598182aac",
         intel: "b1ef8087eed0c79ea62eedfe8257e724603f7b0ffea371f0526ffceeefad8591"

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
