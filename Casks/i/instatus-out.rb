cask "instatus-out" do
  version "1.0.8"
  sha256 "14ad0e0e13dd3b5747defccfd2483069297fedcd0d74727246d031bd23ab5649"

  url "https://github.com/instatushq/out/releases/download/v#{version}/Instatus.Out-#{version}-mac.dmg",
      verified: "github.com/instatushq/out/"
  name "Instatus Out"
  desc "Monitor services in your menu bar"
  homepage "https://instatus.com/out"

  app "Instatus Out.app"

  zap trash: [
    "~/Library/Application Support/instatus-out",
    "~/Library/Preferences/com.instatus.out.plist",
    "~/Library/Saved Application State/com.instatus.out.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
