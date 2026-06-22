cask "openaudible" do
  version "4.8.5"
  sha256 "d95f2b54fbc89fbe51e7230541499198fd85c32918d3e6f83ccd087490f177b1"

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
