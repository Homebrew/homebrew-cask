cask "dupeguru" do
  version "4.0.3"
  sha256 "805fa0e2ddf57ac7d7e79cebe893a3a505f24c28500a204d22eb2b6d3d889454"

  url "https://github.com/arsenetar/dupeguru/releases/download/#{version}/dupeguru_osx_#{version.dots_to_underscores}.dmg",
      verified: "github.com/arsenetar/dupeguru/"
  name "dupeGuru"
  desc "Finds duplicate files in a computer system"
  homepage "https://dupeguru.voltaicideas.net/"

  app "dupeGuru.app"
end
