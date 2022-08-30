cask "inform" do
  version "10.1.1"
  sha256 "74cb35f6352821b94322cb990e9bc9129e7e4449f8e7322422d875df80657cd5"

  url "https://github.com/ganelson/inform/releases/download/v#{version}/Inform_#{version.dots_to_underscores}_macOS_1_82_1.dmg",
      verified: "github.com/ganelson/inform"
  name "Inform"
  desc "Writing system for interactive fiction based on natural language"
  homepage "https://ganelson.github.io/inform-website"

  app "Inform.app"
end
