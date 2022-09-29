cask "openaudible" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.6.1"
  sha256 arm:   "4aed05c817e9cb96328251079f07222d1cc8ec3275898d05e2d6fbaa9097f0b3",
         intel: "dbe1f5d5e618dd16c4518a90c1021d12072ac46711584da0af1b0dec2bd17882"

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
