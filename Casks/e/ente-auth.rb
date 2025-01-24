cask "ente-auth" do
  version "4.3.1"
  sha256 "e6097d6d412876ac9deea14bb53362048b0b3cf52c8465c9964d42683758697f"

  url "https://github.com/ente-io/ente/releases/download/auth-v#{version}/ente-auth-v#{version}.dmg",
      verified: "github.com/ente-io/ente/"
  name "Ente Auth"
  desc "Desktop client for Ente Auth"
  homepage "https://ente.io/auth/"

  livecheck do
    url :url
    regex(/^auth[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: ">= :mojave"

  app "Ente Auth.app"

  zap trash: [
    "~/Library/Application Scripts/io.ente.auth.mac",
    "~/Library/Containers/io.ente.auth.mac",
  ]
end
