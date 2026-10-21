cask "incident-io" do
  version "1.4.8"
  sha256 "0fb097ae5e6485dba856f4451ada5271434d575bf81b7fc68d11612a2e15b279"

  url "https://storage.googleapis.com/incident-io-production-downloads/incident.io-#{version}.zip"
  name "incident.io"
  desc "Incident management platform"
  homepage "https://incident.io/"

  livecheck do
    url "https://storage.googleapis.com/incident-io-production-downloads/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "incident.io.app"

  zap trash: [
    "~/Library/Application Support/incident.io",
    "~/Library/Caches/com.incidentio.desktop",
    "~/Library/Preferences/com.incidentio.desktop.plist",
  ]
end
