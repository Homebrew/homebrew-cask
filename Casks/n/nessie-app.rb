cask "nessie-app" do
  version "1.4.4462"
  sha256 "46d412251ef07f99f56e9109fe6d9c47aa3d35c217b8847c1a690b07daf5b0a5"

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
