cask "mendeley-reference-manager" do
  version "2.104.0"
  sha256 "690811315650ef5350ca1845d4fae95381c65f34d069c5789f81409d6bd709b7"

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
