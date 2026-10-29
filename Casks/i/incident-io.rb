cask "incident-io" do
  version "1.4.13"
  sha256 "af6180b8b0a6f721ff36369a9133211da73d43aed50c34548d063c619a26a574"

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
