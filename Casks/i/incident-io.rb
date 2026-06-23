cask "incident-io" do
  version "1.3.5"
  sha256 "2a3a9842daae054f156ccfae22da2bfe29fa78ce5494421db8cc98bc1f12ddc8"

  url "https://storage.googleapis.com/incident-io-production-downloads/incident.io-#{version}.zip",
      verified: "storage.googleapis.com/incident-io-production-downloads/"
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

  zap trash: "~/Library/Application Support/incident.io"
end
