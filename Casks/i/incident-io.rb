cask "incident-io" do
  version "1.2.21"
  sha256 "de0ab1341b93e521143839520e4b50c5d0f06921e05a797b56e30328ec835ee1"

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
