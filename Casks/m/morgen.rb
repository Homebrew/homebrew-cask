cask "morgen" do
  arch arm: "arm64", intel: "x64"

  version "3.2.2,240205k9w7ls3w9"
  sha256 arm:   "73995d017badf7e7af5a36df9e3ebedb54b5e1cafbe4d44bcef689447aeba2a8",
         intel: "c5013eb110289171b6b7b8a1f3eea4dea3cf1b93b923b1db512b529bdbb0126f"

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
