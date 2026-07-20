cask "incident-io" do
  version "1.3.6"
  sha256 "1595a70305fd90a381c3ce6413aead84d9c5a88fdc4000d6ec168534b7993441"

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
