cask "incident-io" do
  version "1.2.23"
  sha256 "453448426dc027543fec81d4179f91f50117a4e8bd469a225c66a5b634960178"

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
