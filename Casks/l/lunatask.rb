cask "lunatask" do
  version "2.1.18"
  sha256 "7daee0dd228175217dca25a19c17b24c2b92f8ab679fa0289ee1f3fcb7dd8aac"

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
