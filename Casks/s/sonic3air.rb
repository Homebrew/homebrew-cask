cask "sonic3air" do
  version "23.11.18.0"
  sha256 "6ef193c894005e8c8f91916705da52f5bdf0ef74a1e438f7445ab617663eae30"

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
  artifact "Manual.pdf", target: "~/Library/Application Support/sonic3air/Manual.pdf"
  artifact "doc", target: "~/Library/Application Support/sonic3air/doc"
  artifact "bonus", target: "~/Library/Application Support/sonic3air/bonus"

  zap trash: "~/Library/Application Support/sonic3air"
end
