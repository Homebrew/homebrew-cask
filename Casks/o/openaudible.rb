cask "openaudible" do
  version "4.8.6"
  sha256 "c707c98a1456926a6772e1a937d52cd5eb08970011b53ce4f078c6c64e2c3b33"

  url "https://github.com/openaudible/openaudible/releases/download/v#{version}/OpenAudible_#{version}.dmg",
      verified: "github.com/openaudible/openaudible/"
  name "OpenAudible"
  desc "Audiobook manager for Audible users"
  homepage "https://openaudible.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "OpenAudible.app"

  zap trash: "/Library/OpenAudible"
end
