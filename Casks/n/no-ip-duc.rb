cask "no-ip-duc" do
  version "4.0.12"
  sha256 "8c631c1c0c6b82b063c634f11c8b8d3ab2dd8dfb6b439f419055afc291ea42a0"

  url "https://www.noip.com/client/macos/No-IP_DUC_v#{version}.dmg"
  name "No-IP DUC"
  desc "Keeps current IP address in sync"
  homepage "https://www.noip.com/download?page=mac"

  livecheck do
    url "https://www.noip.com/client/macos/appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "No-IP DUC.app"

  zap trash: [
    "~/Library/Caches/com.noip.No-IP-DUC",
    "~/Library/HTTPStorages/com.noip.No-IP-DUC",
    "~/Library/Preferences/com.noip.No-IP-DUC.plist",
  ]
end
