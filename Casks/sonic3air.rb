cask "sonic3air" do
  version "22.08.27.0"
  sha256 "0c764d2acc3107b7822482258eaac6c9dcae786b5355ae60371b25a66e020325"

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
