cask "morgen" do
  arch arm: "arm64", intel: "x64"

  version "3.2.5,2403026qb3jmtc3"
  sha256 arm:   "d27aba8b05faba861c1d96b10b3cc8220fa0a068c9bb434e67b861ea12805440",
         intel: "56f6c9f4743788a241a0b0fa0771b956b2b1f77d19316ffb9de01a35fd95acf3"

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
