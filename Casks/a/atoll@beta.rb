cask "atoll@beta" do
  version "1.0.2-beta"
  sha256 "1030ec27bb583f36d98e8002d0ea6b9226474caeaea838e7d373b68ae6d4fe53"

  url "https://github.com/Ebullioscopic/Atoll/releases/download/v#{version}/Atoll.dmg"
  name "Atoll Beta"
  desc "Atoll transforms the MacBook notch into an interactive command surface (Beta)"
  homepage "https://github.com/Ebullioscopic/Atoll"

  # Ignore livecheck errors for pre-releases
  livecheck do
    skip "No version check for beta"
  end

  depends_on macos: ">= :sequoia"

  app "Atoll.app"

  zap delete: "~/Library/Preferences/com.Ebullioscopic.Atoll.plist"
end
