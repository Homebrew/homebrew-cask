cask "sneek" do
  version "2.0.19"
  sha256 :no_check

  # s3-eu-west-1.amazonaws.com/cdn.sneek.io/ was verified as official when first introduced to the cask
  url "https://s3-eu-west-1.amazonaws.com/cdn.sneek.io/installers/latest/Sneek.dmg"
  name "Sneek"
  homepage "https://sneek.io/"

  app "Sneek.app"
end
