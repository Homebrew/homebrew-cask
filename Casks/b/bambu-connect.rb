cask "bambu-connect" do
  arch arm: "arm64", intel: "x64"

  version "2.6.0-beta.0"
  sha256 arm:   "1225e0b0d9411bc0830d98375269832ef78c1e522cbe5ff596430e8c4a464593",
         intel: "440a417954c668a3fa3962a5cde53baaffb064685d9d2adad72407e4d8c77631"

  url "https://public-cdn.bblmw.com/upgrade/bambu-connect/updates/versions/#{version}/bambu-connect-v#{version}-darwin-#{arch}.dmg"
  name "Bambu Connect"
  desc "Tool for linking with Bambu Lab 3D printers"
  homepage "https://wiki.bambulab.com/en/software/bambu-connect"

  livecheck do
    url "https://public-cdn.bblmw.com/upgrade/bambu-connect/updates/beta-mac.yml?noCache=#{Time.now.to_i}"
    strategy :electron_builder
  end

  depends_on :macos

  app "Bambu Connect.app"

  zap trash: [
    "~/Library/Application Support/Bambu Connect",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bambulab.bambu-connect.sfl*",
    "~/Library/Preferences/com.bambulab.bambu-connect.plist",
    "~/Library/Saved Application State/com.bambulab.bambu-connect.savedState",
  ]
end
