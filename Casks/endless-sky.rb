cask "endless-sky" do
  version "0.10.0"
  sha256 "c5245f417306a238c45ce058b893134fd057ea01594c1689f221bfaead3f081f"

  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/Endless-Sky-v#{version}.dmg",
      verified: "github.com/endless-sky/endless-sky/"
  name "Endless Sky"
  desc "Space exploration, trading, and combat game"
  homepage "https://endless-sky.github.io/"

  app "Endless Sky.app"
end
