cask "polymail" do
  arch arm: "arm", intel: "intel"

  version "2.4.3006"
  sha256 :no_check

  url "https://builds.polymail.io/macos-#{arch}/current"
  name "Polymail"
  desc "Email productivity application"
  homepage "https://polymail.io/"

  livecheck do
    url "https://builds.polymail.io/macos-arm/current"
    strategy :header_match
  end

  auto_updates true
  depends_on :macos

  app "Polymail.app"

  zap trash: [
    "~/Library/Application Support/Polymail",
    "~/Library/Caches/io.polymail.osx*",
    "~/Library/HTTPStorages/io.polymail.osx",
    "~/Library/Logs/Polymail",
    "~/Library/Preferences/io.polymail.osx.plist",
    "~/Library/Saved Application State/io.polymail.osx.savedState",
  ]
end
