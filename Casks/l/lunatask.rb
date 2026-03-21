cask "lunatask" do
  version "2.1.26"
  sha256 "f7639034ce32007a4f1ac2ae005201e315d1374b950e75097f70853835b2ea10"

  url "https://github.com/lunatask/lunatask/releases/download/v#{version}/Lunatask-#{version}-universal.dmg",
      verified: "github.com/lunatask/lunatask/"
  name "Lunatask"
  desc "Encrypted to-do list, habit tracker, journaling, life-tracking and notes app"
  homepage "https://lunatask.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Lunatask.app"

  zap trash: [
    "~/Library/Application Support/@lunatask",
    "~/Library/Logs/@lunatask",
    "~/Library/Preferences/com.mikekreeki.tasks.plist",
    "~/Library/Saved Application State/com.mikekreeki.tasks.savedState",
  ]
end
