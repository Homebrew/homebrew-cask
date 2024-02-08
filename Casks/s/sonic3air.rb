cask "sonic3air" do
  version "24.02.02.0"
  sha256 "a6ac19918d2d34772aa89726f68677fb612ef73c0bdd138bba3b1e11a4630ad1"

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
