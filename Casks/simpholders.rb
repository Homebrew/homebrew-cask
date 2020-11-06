cask "simpholders" do
  version "3.0.10,2277"
  sha256 "edcfb7b1c78873755487640615960980f2c13ae56a565f67c55d30ad1657f134"

  url "https://simpholders.com/site/assets/files/#{version.after_comma}/simpholders_#{version.before_comma.dots_to_underscores}.dmg"
  appcast "https://simpholders.com/releases/"
  name "SimPholders"
  homepage "https://simpholders.com/"

  depends_on macos: ">= :mojave"

  app "SimPholders.app"
end
