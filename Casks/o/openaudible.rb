cask "openaudible" do
  version "4.6.6"
  sha256 "d5ca295094227bc2e9793b8a82195d704a26978567a7ca3cf23e0a21104a81c9"

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
