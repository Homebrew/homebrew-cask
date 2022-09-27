cask "openaudible" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.6"
  sha256 arm:   "734577d0cbfa922848da4ca7e296e020c5026b6d4f16c3b88daea59b4453c1d2",
         intel: "7019710116465aebf2b620ec5d77c308a0f41258cd3ce9724676bace4f47f1a0"

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
