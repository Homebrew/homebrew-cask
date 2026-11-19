cask "ente-auth" do
  version "4.4.27"
  sha256 "9c05d588b612d697f50d5b54cce1677cfac3c38a9aa32910279f68cd81f6c718"

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
