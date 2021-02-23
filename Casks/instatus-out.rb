cask "instatus-out" do
  version "1.0.6"
  sha256 "7865c2173b6d94e2d0feb62e49afbcaa63fbab0b01d64307101685410face874"

  url "https://github.com/instatushq/out/releases/download/v#{version}/Instatus.Out-#{version}-mac.dmg",
      verified: "https://github.com/instatushq/out/"
  name "Instatus Out"
  desc "Monitor services in your menu bar"
  homepage "https://instatus.com/out"

  livecheck do
    url "https://github.com/instatushq/out"
    strategy :git
  end

  app "Instatus Out.app"

  zap trash: [
    "~/Library/Application Support/instatus-out",
    "~/Library/Preferences/com.instatus.out.plist",
    "~/Library/Saved Application State/com.instatus.out.savedState",
  ]
end
