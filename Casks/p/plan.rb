cask "plan" do
  version "0.9.1"
  sha256 :no_check

  url "https://cdn.getplan.co/plan-latest.dmg"
  name "Plan"
  desc "Calendar and project manager"
  homepage "https://getplan.co/login"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Plan.app"

  zap trash: [
    "~/Library/Application Support/Plan",
    "~/Library/Application Support/Plan-Mac",
    "~/Library/Caches/com.getplan.Plan",
    "~/Library/Cookies/com.getplan.Plan.binarycookies",
    "~/Library/Preferences/com.getplan.mac.plist",
    "~/Library/Preferences/com.getplan.Plan.plist",
    "~/Library/Saved Application State/com.getplan.mac.savedState",
    "~/Library/Saved Application State/com.getplan.Plan.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
