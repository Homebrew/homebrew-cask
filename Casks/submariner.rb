# frozen_string_literal: true

cask "submariner" do
  version "2.1.1"
  sha256 "e91b2a97cb968ed15749c1890958db26d45ac0781d756946f88d5ee85f2800df"

  url "https://github.com/NattyNarwhal/Submariner/releases/download/v#{version}/Submariner-#{version}.zip",
      verified: "github.com/NattyNarwhal/Submariner/"
  name "Submariner"
  desc "Subsonic client"
  homepage "https://submarinerapp.com/"

  app "Submariner.app"

  zap trash: "~/Music/Submariner"
end
