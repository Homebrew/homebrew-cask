cask "ente-auth" do
  version "3.0.13"
  sha256 "bfc11616dc1a2602d607451f2749dd28ff751e7b121d21b7fca6e58d16641815"

  url "https://github.com/ente-io/ente/releases/download/auth-v#{version}/ente-auth-v#{version}.dmg",
      verified: "github.com/ente-io/ente/"
  name "Ente Auth"
  desc "Desktop client for Ente Auth"
  homepage "https://ente.io/"

  livecheck do
    url :url
    regex(/^auth[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Ente Auth.app"

  zap trash: [
    "~/Library/Application Scripts/io.ente.auth.mac",
    "~/Library/Containers/io.ente.auth.mac",
  ]
end
