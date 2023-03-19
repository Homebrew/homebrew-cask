cask "openaudible" do
  version "3.7"
  sha256 "5e6da9a2714ee33b6e776e16bc611e7e1ab60ce7e83bb7c90c1a9d7a1aae1a96"

  url "https://github.com/openaudible/openaudible/releases/download/v#{version}/OpenAudible_#{version}.dmg",
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
