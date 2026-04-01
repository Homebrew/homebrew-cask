cask "incident-io" do
  version "1.2.19"
  sha256 "e7f246968566b4b69b1edeb95c708e2580014819166db0793eaa7bac9b883ac5"

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
