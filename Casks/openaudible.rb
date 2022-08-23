cask "openaudible" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.5.9"
  sha256 arm:   "2386378e1ed81a7a4c6a65b92b21794fe5675d9925a01534b6ab8f7523ddb281",
         intel: "e5b9a122a249cebf0e1bd7adfcab24924274878f711e8a2b501f4e634687bb62"

  url "https://github.com/openaudible/openaudible/releases/download/v#{version}/OpenAudible_#{version}_#{arch}.dmg",
      verified: "github.com/openaudible/openaudible/"
  name "OpenAudible"
  desc "Audiobook manager for Audible users"
  homepage "https://openaudible.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OpenAudible.app"

  zap trash: "/Library/OpenAudible"
end
