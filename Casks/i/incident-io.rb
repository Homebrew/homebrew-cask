cask "incident-io" do
  version "1.4.17"
  sha256 "4f2fa3218de732cb98ff21acecec82f079f9815333cafe4216fc56f7c085c4bd"

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
