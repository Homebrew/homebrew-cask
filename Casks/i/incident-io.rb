cask "incident-io" do
  version "1.2.24"
  sha256 "5ce6e6e69832db208101b4b2524a28deca88d6c8da4b597d8589ba03bd81ddbe"

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
