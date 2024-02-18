cask "gopanda" do
  version "2.8.0"
  sha256 :no_check

  url "https://pandanet-igs.com/gopanda#{version.major}/download/GoPanda#{version.major}.dmg"
  name "GoPanda"
  desc "Pandanet client"
  homepage "https://pandanet-igs.com/communities/gopanda2"

  disable! date: "2024-02-18", because: "download artifact not available"

  app "GoPanda#{version.major}.app"
end
