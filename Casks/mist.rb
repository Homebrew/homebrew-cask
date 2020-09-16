cask "mist" do
  version "0.11.1"
  sha256 "2d18b86667c4daf690cfda327550d428f7efd09b6057b73456a71d2990c7efd1"

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Mist-macosx-#{version.dots_to_hyphens}.dmg"
  appcast "https://github.com/ethereum/mist/releases.atom"
  name "Mist"
  desc "Browser for Ðapps on the Ethereum network"
  homepage "https://github.com/ethereum/mist"

  app "Mist.app"
end
