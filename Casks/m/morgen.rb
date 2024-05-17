cask "morgen" do
  arch arm: "arm64", intel: "x64"

  version "3.4.2,240516ljmua2vdn"
  sha256 arm:   "84eae17af4145005f3c24084efbdaebd37acb951bfc1fae80e955fadf72dbb42",
         intel: "98383fd59d0a4e0c340cc54dc5f88c179b418549ce9d5cc8cb077ab98f4016ce"

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
