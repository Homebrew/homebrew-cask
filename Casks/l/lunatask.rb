cask "lunatask" do
  version "2.1.13"
  sha256 "5ce230145c1d266d52cf02789ce89d6ec06bc5fe5bfddc4eba5ff3aee2a0efc9"

  url "https://github.com/lunatask/lunatask/releases/download/v#{version}/Lunatask-#{version}-universal.dmg",
      verified: "github.com/lunatask/lunatask/"
  name "Lunatask"
  desc "Encrypted to-do list, habit tracker, journaling, life-tracking and notes app"
  homepage "https://lunatask.app/"

  depends_on macos: ">= :big_sur"

  app "Lunatask.app"

  zap trash: [
    "~/Library/Application Support/@lunatask",
    "~/Library/Logs/@lunatask",
    "~/Library/Preferences/com.mikekreeki.tasks.plist",
    "~/Library/Saved Application State/com.mikekreeki.tasks.savedState",
  ]
end
