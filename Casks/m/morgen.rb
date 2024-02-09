cask "morgen" do
  arch arm: "arm64", intel: "x64"

  version "3.2.3,2402098szsvbhdf"
  sha256 arm:   "07f17c220e1a353bd11de5098bfed012a4ccc7cacab0448e684199e2496694c2",
         intel: "ed47d8b02b6c2bc24d87482d32326dd2189ff28f959c2baefebd2fba1f2a2282"

  url "https://download.todesktop.com/210203cqcj00tw1/Morgen%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}.dmg",
      verified: "download.todesktop.com/210203cqcj00tw1/"
  name "Morgen"
  desc "All-in-one calendars, tasks and scheduler"
  homepage "https://morgen.so/"

  livecheck do
    url "https://download.todesktop.com/210203cqcj00tw1/latest-mac.yml"
    regex(/Morgen\sv?(\d+(?:\.\d+)+).*?(?:Build\s)([a-z0-9]+)[._-]#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Morgen.app"

  zap trash: [
    "~/Library/Application Support/Morgen",
    "~/Library/Preferences/com.todesktop.210203cqcj00tw1.plist",
    "~/Library/Saved Application State/com.todesktop.210203cqcj00tw1.savedState",
  ]
end
