cask "lunatask" do
  version "2.0.19"
  sha256 "8329905cb5cbf2f2770d9a7d8a213b8d4b27a4a4361885dcdee68b161747175d"

  url "https://github.com/lunatask/lunatask/releases/download/v#{version}/Lunatask-#{version}-universal.dmg",
      verified: "github.com/lunatask/lunatask/"
  name "Lunatask"
  desc "Encrypted to-do list, habit tracker, journaling, life-tracking and notes app"
  homepage "https://lunatask.app/"

  depends_on macos: ">= :catalina"

  app "Lunatask.app"

  zap trash: [
    "~/Library/Application Support/@lunatask",
    "~/Library/Logs/@lunatask",
    "~/Library/Preferences/com.mikekreeki.tasks.plist",
    "~/Library/Saved Application State/com.mikekreeki.tasks.savedState",
  ]
end
