cask "macspice" do
  version "3.2.1,351"
  sha256 "85e8ec002c9a1af823bd18766176d3e77b51173fa91e482da6ada30bf84950d7"

  url "https://www.macspice.com/mirror/binaries/v#{version.csv.first}/MacSpice3f5.dmg",
      user_agent: :fake
  name "MacSpice"
  desc "Electronic circuit simulator"
  homepage "https://www.macspice.com/"

  livecheck do
    url "https://www.macspice.com/AppCast-v2.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "MacSpice.app"

  zap trash: [
    "~/Documents/MacSpice",
    "~/Library/Application Support/MacSpice",
    "~/Library/Caches/com.apple.helpd/Generated/uk.co.cdhw.MacSpice.help*#{version.csv.first}",
    "~/Library/Preferences/uk.co.cdhw.MacSpice.plist",
    "~/Library/Saved Application State/uk.co.cdhw.MacSpice.savedState",
  ]
end
