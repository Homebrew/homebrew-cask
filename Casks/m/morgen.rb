cask "morgen" do
  arch arm: "arm64", intel: "x64"

  version "3.1.3,231204j94ts21rg"
  sha256 arm:   "c68edc041646054ab228c19e80d896b18e1fc87eb9a0bdcbee8ef86bf86fda27",
         intel: "ffd77f2cfada49c73d09964df99f6be957ab71176cde6719a6a9193856533481"

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
