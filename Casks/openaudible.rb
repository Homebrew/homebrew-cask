cask "openaudible" do
  version "3.0.2"
  sha256 "72d44ccdb8210fbe332a7e554bf8efc3e945064589af3ef4f739ebe32e3b6f67"

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
