cask "nessie-app" do
  version "1.4.5008"
  sha256 "132acdce18e421ca01ad3efeafa04218bdcadf98f2e6fdde5f486beb20fc584a"

  url "https://nessie-notes-app-auto-updates.s3.us-west-2.amazonaws.com/Nessie_#{version}.zip"
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
    "~/Library/Application Support/CrashReporter/Nessie_*.plist",
    "~/Library/Application Support/Nessie",
    "~/Library/Caches/com.nessielabs.Nessie",
    "~/Library/Containers/com.nessielabs.Nessie",
    "~/Library/HTTPStorages/com.nessielabs.Nessie",
    "~/Library/Logs/DiagnosticReports/Nessie-*.ips",
    "~/Library/Preferences/com.nessielabs.Nessie.plist",
  ]
end
