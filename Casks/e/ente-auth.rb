cask "ente-auth" do
  version "4.4.26"
  sha256 "f063d87dc247feed7dba0ecdae208ffc22f9b5b2de0c58506394a2cae0610ada"

  url "https://github.com/ente-io/ente/releases/download/auth-v#{version}/ente-auth-v#{version}.dmg"
  name "Ente Auth"
  desc "Desktop client for Ente Auth"
  homepage "https://ente.io/auth/"

  livecheck do
    url :url
    regex(/^auth[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :monterey

  app "Ente Auth.app"

  zap trash: [
    "~/Library/Application Scripts/io.ente.auth.mac",
    "~/Library/Containers/io.ente.auth.mac",
  ]
end
