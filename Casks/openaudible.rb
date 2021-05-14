cask "openaudible" do
  version "3.0.1"
  sha256 "fc7485f9b2c5e5500a14f57962189ab376e395514d075be214cdbae67928bca6"

  url "https://github.com/openaudible/openaudible/releases/download/v#{version}/OpenAudible_#{version}.dmg",
      verified: "github.com/openaudible/"
  name "OpenAudible"
  desc "Open-source audible manager"
  homepage "https://openaudible.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OpenAudible.app"

  zap trash: "/Library/OpenAudible"
end
