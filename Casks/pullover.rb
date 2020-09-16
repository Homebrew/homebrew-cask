cask "pullover" do
  version "1.3.0"
  sha256 "2e0805d6d358c76ffc776f0641b2e95c1cdd4696b5bc13361b8af990e3708787"

  url "https://github.com/cgrossde/Pullover/releases/download/#{version}/Pullover_#{version}.dmg"
  appcast "https://github.com/cgrossde/Pullover/releases.atom"
  name "Pullover"
  desc "Unofficial multi-platform Pushover desktop client"
  homepage "https://github.com/cgrossde/Pullover"

  app "pullover.app"
end
