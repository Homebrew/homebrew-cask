cask "sonic3air" do
  version "24.02.02.1"
  sha256 "5e2e73180318e6323aa1b436e5aad30006f40f97c315be84dd0b6af54d9bf151"

  url "https://projects.sappharad.com/s3air_mac/sonic3air_mac_#{version.major_minor_patch.no_dots}.dmg",
      verified: "projects.sappharad.com/s3air_mac/"
  name "Sonic 3 A.I.R."
  desc "Reimplementation of Sonic 3 & Knuckles (requires original game)"
  homepage "https://sonic3air.org/"

  livecheck do
    url "https://projects.sappharad.com/s3air_mac/changelog_mac.txt"
    regex(/v(\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Sonic 3 AIR.app"
  artifact "Manual.pdf", target: "~/Library/Application Support/sonic3air/Manual.pdf"
  artifact "doc", target: "~/Library/Application Support/sonic3air/doc"
  artifact "bonus", target: "~/Library/Application Support/sonic3air/bonus"

  zap trash: "~/Library/Application Support/sonic3air"
end
