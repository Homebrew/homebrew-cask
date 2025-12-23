cask "nessie-app" do
  version "1.3.7"
  sha256 "c4314e2bb9d9097fba1afd59a210cb9989dc5006c00ba73ba7270ed009dbcd35"

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
  depends_on macos: ">= :sonoma"

  app "Nessie.app"

  zap trash: [
    "~/Library/Application Scripts/com.nessielabs.Nessie",
    "~/Library/Caches/com.nessielabs.Nessie",
    "~/Library/Containers/com.nessielabs.Nessie",
    "~/Library/Preferences/com.nessielabs.Nessie.plist",
  ]
end
