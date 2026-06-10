cask "incident-io" do
  version "1.3.2"
  sha256 "df3b4c6767a581fb29ac42e2b22dde50d8c988a07371be7f47451bb9591ab153"

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
