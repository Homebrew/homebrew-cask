cask "openaudible" do
  version "4.0.5"
  sha256 "0d9b9bb89ab6a4eb6dda7928c8c82e45f3232c2efe3220ea6b1d7a0520bd676b"

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
