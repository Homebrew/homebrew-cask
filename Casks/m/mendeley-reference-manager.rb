cask "mendeley-reference-manager" do
  version "2.105.0"
  sha256 "45abf63aa0633df8b7fb1720c1c3d42065908c9e89fe1e027b5745230877e848"

  url "https://static.mendeley.com/bin/desktop/mendeley-reference-manager-#{version}-x64.dmg"
  name "Mendeley Reference Manager"
  desc "Research management tool"
  homepage "https://www.mendeley.com/download-reference-manager/macOS/"

  livecheck do
    url "https://static.mendeley.com/bin/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  app "Mendeley Reference Manager.app"

  zap trash: [
    "~/Library/Application Support/Mendeley Reference Manager",
    "~/Library/Logs/Mendeley Reference Manager",
    "~/Library/Preferences/com.elsevier.mendeley.plist",
    "~/Library/Saved Application State/com.elsevier.mendeley.savedState",
  ]
end
