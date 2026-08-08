cask "synapse" do
  version "2.2.2"
  sha256 "cf73fcc11de44e44cef1a4ab6f1d60e9060bc84eb10dc989ceee12c22186764"

  url "https://www.synapsemac.com/downloads/Synapse-#{version}.dmg"
  name "Synapse"
  desc "Every tool you need in your daily workflow"
  homepage "https://www.synapsemac.com"

  depends_on macos: :sonoma

  app "Synapse.app"

  zap trash: [
    "~/Library/Application Support/Synapse",
    "~/Library/Preferences/com.harshana.Synapse.plist",
  ]
end
