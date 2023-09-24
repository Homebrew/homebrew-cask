cask "balance-lock" do
  version "1.1"
  sha256 "c943838667974ad96ff8582334c18754f3c35ceba5692f431f5dfd1cd8284765"

  url "https://www.tunabellysoftware.com/resources/Balance%20Lock%20#{version}.dmg"
  name "Balance Lock"
  desc "Prevents audio balance from drifting left or right"
  homepage "https://www.tunabellysoftware.com/balance_lock"

  livecheck do
    url "https://www.tunabellysoftware.com/resources/sparkle/balancelock.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sierra"

  app "Balance Lock.app"

  zap trash: [
    "~/Library/Application Support/Balance Lock",
    "~/Library/Preferences/com.tunabelly.balancelock.plist",
  ]
end
