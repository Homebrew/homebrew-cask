cask "nessie-app" do
  version "1.4.414"
  sha256 "2549001203840b727e6dcbd1fdd3404a86b3fd69358e679f84408c272a829a53"

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
