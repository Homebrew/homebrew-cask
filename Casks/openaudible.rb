cask "openaudible" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "3.5.6"

  if Hardware::CPU.intel?
    sha256 "83e061a5889d18f7872412b5b04d60c8364bca494c1bf1443b324f198bbe9cd2"
  else
    sha256 "433df18f09934eb11ebcd5e265b98a014a2ae0b8d71d935cba13cbf53fee3107"
  end

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
