cask "neat" do
  version "0.0.18"
  sha256 "a61ab7335bbf7f540970cd1a9be7fe3773a9e587bee3120c6cdc72a3a2c344dd"

  url "https://github.com/neat-run/activity-feed-public/releases/download/v#{version}/Neat-#{version}.dmg", verified: "github.com/neat-run/activity-feed-public/"
  name "neat"
  desc "GitHub notifications in your menubar"
  homepage "https://neat.run/"

  app ""
end
