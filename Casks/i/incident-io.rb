cask "incident-io" do
  version "1.4.3"
  sha256 "d439c362be60ac80f765b647f7d398ea2a79e70d8d0a4a71f213e87ceb8352f1"

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

  zap trash: "~/Library/Application Support/incident.io"
end
