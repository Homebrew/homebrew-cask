cask "simpholders" do
  version "3.0.11,2350"
  sha256 "9a58616f4584fc44c4dd6628a84b5f5ac7e45fe45691e503117ceafde4f7d6f6"

  url "https://simpholders.com/site/assets/files/#{version.after_comma}/simpholders_#{version.before_comma.dots_to_underscores}_dmg.dmg"
  appcast "https://simpholders.com/releases/"
  name "SimPholders"
  homepage "https://simpholders.com/"

  depends_on macos: ">= :catalina"

  app "SimPholders.app"
end
