cask "archipelago" do
  version "3.15.0"
  sha256 "4bc6252e23007bb24bcc6d96d133cd18d62afb7778e62556498aea4cce93adab"

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  name "Archipelago"
  desc "Open-source terminal emulator built on web technology"
  homepage "https://github.com/npezza93/archipelago"

  app "Archipelago.app"
end
