cask "armcord" do
  version "3.2.3"
  sha256 "47137f6a47f6ef5823c9192f56577c36aa4f2f395fcf969712345655657cb1c8"

  url "https://github.com/ArmCord/ArmCord/releases/download/v#{version}/ArmCord-#{version}.dmg",
      verified: "github.com/ArmCord/ArmCord/"
  name "armcord"
  desc "Custom lightweight Discord client designed to enhance your experience"
  homepage "https://armcord.app/"

  app "armcord.app"
end
