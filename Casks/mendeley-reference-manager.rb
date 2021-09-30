cask "mendeley-reference-manager" do
  version "2.58.0"
  sha256 "52413ada862b4bfc19af4ad4b2a15310bdde35781c5d970b624805576ff9ed35"

  url "https://static.mendeley.com/bin/desktop/mendeley-reference-manager-#{version}.dmg"
  name "Mendeley Reference Manager"
  desc "Research management tool"
  homepage "https://www.mendeley.com/download-reference-manager/macOS/"

  livecheck do
    url "https://static.mendeley.com/bin/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :yosemite"

  app "Mendeley Reference Manager.app"

  zap trash: [
    "~/Library/Application Support/Mendeley Reference Manager",
    "~/Library/Logs/Mendeley Reference Manager",
    "~/Library/Preferences/com.elsevier.mendeley.plist",
    "~/Library/Saved Application State/com.elsevier.mendeley.savedState",
  ]
end
