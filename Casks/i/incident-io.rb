cask "incident-io" do
  version "1.4.14"
  sha256 "dad0fbe98d58e23dc7d442af5b73c78d031bb4ace66e2f632d5530c4926ddea6"

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
