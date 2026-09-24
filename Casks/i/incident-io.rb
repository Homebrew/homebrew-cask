cask "incident-io" do
  version "1.4.4"
  sha256 "b908e8d9620e54b6344dcb01cd674455911a177eee0cbb0df2198ec74183e267"

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
