cask "jamfcheck" do
  version "2.3.0"
  sha256 "a5c30e70772689cac9f8b17e603821f36a995e5a1e4a75c1aa71b4fa20f2f25a"

  url "https://github.com/txhaflaire/JamfCheck/releases/download/#{version}/JamfCheck.dmg"
  name "JamfCheck"
  desc "Audits Jamf Pro settings for security misconfigurations"
  homepage "https://github.com/txhaflaire/JamfCheck"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "JamfCheck.app"

  zap trash: [
    "~/Library/Caches/com.txhaflaire.JamfCheck",
    "~/Library/HTTPStorages/com.txhaflaire.JamfCheck",
    "~/Library/Preferences/com.txhaflaire.JamfCheck.plist",
    "~/Library/Saved Application State/com.txhaflaire.JamfCheck.savedState",
  ]
end
