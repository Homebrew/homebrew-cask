cask "drawbot" do
  version "3.127"
  sha256 "a6d57aa71e098481f40de02260ccfe17e8601ed91c2a3a78cecdecefc9d3cce3"

  url "https://github.com/typemytype/drawbot/releases/download/#{version}/DrawBot.dmg",
      verified: "github.com/typemytype/drawbot/"
  name "DrawBot"
  desc "Write Python scripts to generate two-dimensional graphics"
  homepage "https://www.drawbot.com/"

  app "DrawBot.app"
end
