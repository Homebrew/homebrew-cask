cask "sonic3air" do
  version "22.05.15.0"
  sha256 "849cacb3ffccaa7d030ee9e36677e4c055a66481657fb950bdfbc727ded6815d"

  url "https://projects.sappharad.com/s3air_mac/sonic3air_mac_#{version.major_minor_patch.no_dots}.dmg",
      verified: "projects.sappharad.com/s3air_mac/"
  name "Sonic 3 A.I.R."
  desc "Reimplementation of Sonic 3 & Knuckles (requires original game)"
  homepage "https://sonic3air.org/"

  livecheck do
    url "https://projects.sappharad.com/s3air_mac/changelog_mac.txt"
    regex(/v(\d+(?:\.\d+)*)/i)
  end

  app "Sonic 3 AIR.app"
  artifact "Manual.pdf", target: "#{Dir.home}/Library/Application Support/sonic3air/Manual.pdf"
  artifact "doc", target: "#{Dir.home}/Library/Application Support/sonic3air/doc"
  artifact "bonus", target: "#{Dir.home}/Library/Application Support/sonic3air/bonus"

  zap trash: "~/Library/Application Support/sonic3air"
end
