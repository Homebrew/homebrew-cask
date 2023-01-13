cask "openaudible" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.6.3"
  sha256 arm:   "fbd286aa141852081f438fa06c9ed1053453dce2d773cb9aaa3ee984cf7a2618",
         intel: "455b03a543b030bfc5de5daf80e71e7f1bb7bf2a6c6c4c883817007b35750284"

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
