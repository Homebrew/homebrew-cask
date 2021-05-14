cask "mendeley-reference-manager" do
  version "2.47.0"
  sha256 "04917af5e027deff04bb8390b41c3b4f2d25fc2b2fc99d460a620eccd4e34117"

  url "https://static.mendeley.com/bin/desktop/mendeley-reference-manager-#{version}.dmg"
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
    "~/Library/Preferences/com.elsevier.mendeley.plist",
    "~/Library/Saved Application State/com.elsevier.mendeley.savedState",
    "~/Library/Logs/Mendeley Reference Manager",
  ]
end
