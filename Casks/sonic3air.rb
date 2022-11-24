cask "sonic3air" do
  version "22.09.10.0"
  sha256 "c76b7e305ef0e73e588a40c5970dd3168e527aaf87d1fb636be7fb0c61070c0f"

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
