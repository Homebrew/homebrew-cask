cask "mendeley-reference-manager" do
  version "2.106.0"
  sha256 "d0ba9bdb9212ab2019bc3caaf7aa19cce1f31770bed14cadff6a6d1923f72143"

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
