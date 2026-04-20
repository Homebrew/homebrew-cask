cask "nessie-app" do
  version "1.4.121"
  sha256 "837a6f9a8f169a8330e8fbffebc2105d8d9eff63aa1c1c69ac24ec3465832f0b"

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
