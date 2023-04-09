cask "openaudible" do
  version "3.7.4"
  sha256 "2aa0f70e6e8e8100c85edcfffb5da5dd3be23b07293089f6ed65d82d127c004f"

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
