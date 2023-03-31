cask "mendeley-reference-manager" do
  version "2.86.0"
  sha256 "3e1f2382f0e12b19911626b18736f40641af95aaa4451fd7845b0277bdc6cc9d"

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
    "~/Library/Logs/Mendeley Reference Manager",
    "~/Library/Preferences/com.elsevier.mendeley.plist",
    "~/Library/Saved Application State/com.elsevier.mendeley.savedState",
  ]
end
