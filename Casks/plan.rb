cask "plan" do
  version :latest
  sha256 :no_check

  url "https://cdn.getplan.co/plan-latest.dmg"
  name "Plan"
  homepage "https://getplan.co/login"

  app "Plan.app"

  zap trash: [
    "~/Library/Application Support/Plan",
    "~/Library/Application Support/Plan-Mac",
    "~/Library/Caches/com.getplan.Plan",
    "~/Library/Cookies/com.getplan.Plan.binarycookies",
    "~/Library/Preferences/com.getplan.Plan.plist",
    "~/Library/Preferences/com.getplan.mac.plist",
    "~/Library/Saved Application State/com.getplan.Plan.savedState",
    "~/Library/Saved Application State/com.getplan.mac.savedState",
  ]
end
