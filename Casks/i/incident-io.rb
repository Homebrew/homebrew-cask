cask "incident-io" do
  version "1.2.18"
  sha256 "826c7e998458e07ed64b55aeecc83d0cf30ab8acd421d01b5ccfafaa2f91471e"

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
  depends_on macos: ">= :sequoia"

  app "incident.io.app"

  zap trash: "~/Library/Application Support/incident.io"
end
