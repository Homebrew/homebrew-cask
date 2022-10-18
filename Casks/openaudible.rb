cask "openaudible" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.6.2"
  sha256 arm:   "27134dd40223cb5120c5f6659b4b699d2ef50f6bbf371a29d0f5c1cb6a4482de",
         intel: "4dce2c03c39b6d4d22b07bd1fa43d2fdfb883c2c7600751eabd27784b0f8d232"

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
