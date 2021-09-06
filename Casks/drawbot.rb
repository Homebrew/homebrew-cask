cask "drawbot" do
  version "3.128"
  sha256 "164b2bb7cb10ea1c526faa1315785827f2bfe35603696692d8bb7c554358aed1"

  url "https://github.com/typemytype/drawbot/releases/download/#{version}/DrawBot.dmg",
      verified: "github.com/typemytype/drawbot/"
  name "DrawBot"
  desc "Write Python scripts to generate two-dimensional graphics"
  homepage "https://www.drawbot.com/"

  app "DrawBot.app"
end
