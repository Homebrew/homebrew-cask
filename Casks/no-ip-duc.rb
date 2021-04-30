cask "no-ip-duc" do
  version "4.0.12,55.0"
  sha256 "8c631c1c0c6b82b063c634f11c8b8d3ab2dd8dfb6b439f419055afc291ea42a0"

  url "https://www.noip.com/client/macos/No-IP_DUC_v#{version.before_comma}.dmg"
  name "No-IP DUC"
  desc "Keeps current IP address in sync"
  homepage "https://www.noip.com/download?page=mac"

  livecheck do
    url "https://www.noip.com/client/macos/appcast.xml"
    strategy :sparkle
  end

  app "No-IP DUC.app"
end
