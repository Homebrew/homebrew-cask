cask "nessie-app" do
  version "1.4.1571"
  sha256 "0a15adc65c3071a8041f8caa80c468d4e2d16b4ac62735431b2c3d077c2de479"

  url "https://nessie-notes-app-auto-updates.s3.us-west-2.amazonaws.com/Nessie_#{version}.zip",
      verified: "nessie-notes-app-auto-updates.s3.us-west-2.amazonaws.com/"
  name "Nessie"
  desc "Knowledge base from AI chats"
  homepage "https://nessielabs.com/"

  livecheck do
    url "https://nessie-notes-app-auto-updates.s3.us-west-2.amazonaws.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Nessie.app"

  zap trash: [
    "~/Library/Application Scripts/com.nessielabs.Nessie",
    "~/Library/Caches/com.nessielabs.Nessie",
    "~/Library/Containers/com.nessielabs.Nessie",
    "~/Library/Preferences/com.nessielabs.Nessie.plist",
  ]
end
