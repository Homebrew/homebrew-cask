cask "spotter" do
  version "0.0.1"
  sha256 :no_check

  url "https://github.com/spotter-application/spotter/releases/download/#{version}/spotter.#{version}.dmg",
      verified: "github.com/spotter-application/spotter/"
  appcast "https://github.com/spotter-application/spotter/releases.atom"
  name "Spotter"
  desc "🤖 Productivity tool that allows to launch everything."
  homepage "https://github.com/spotter-application/spotter"
  depends_on macos: ">= :big_sur"

  app "spotter.app"
end
