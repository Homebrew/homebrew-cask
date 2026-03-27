cask "incident-io" do
  version "1.2.17"
  sha256 :no_check

  url "https://storage.googleapis.com/incident-io-production-downloads/incident.io.dmg",
      verified: "storage.googleapis.com/incident-io-production-downloads/"
  name "incident.io"
  desc "Incident management platform"
  homepage "https://incident.io/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :sequoia"

  app "incident.io.app"
end
