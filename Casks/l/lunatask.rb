cask "lunatask" do
  version "2.0.20"
  sha256 "e7852058a34399d30414a094f83485e1ae0cb8a25a2ab6672b2399fa5adf3a95"

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
