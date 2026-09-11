cask "ente-auth" do
  version "4.4.25"
  sha256 "a1a2f979feb28d4b1cf210190ed0e2efe22cbbb42edc2c22545fd244567049c0"

  url "https://github.com/ente-io/ente/releases/download/auth-v#{version}/ente-auth-v#{version}.dmg"
  name "Ente Auth"
  desc "Desktop client for Ente Auth"
  homepage "https://ente.io/auth/"

  livecheck do
    url :url
    regex(/^auth[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on :macos

  app "Ente Auth.app"

  zap trash: [
    "~/Library/Application Scripts/io.ente.auth.mac",
    "~/Library/Containers/io.ente.auth.mac",
  ]
end
