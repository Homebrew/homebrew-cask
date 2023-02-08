cask "drawbot" do
  version "3.129"
  sha256 "bd0af33cc188133224066ee8a85c81a926ba4c3c1da994749b10d0b8b0eb02b7"

  url "https://github.com/typemytype/drawbot/releases/download/#{version}/DrawBot.dmg",
      verified: "github.com/typemytype/drawbot/"
  name "DrawBot"
  desc "Write Python scripts to generate two-dimensional graphics"
  homepage "https://www.drawbot.com/"

  app "DrawBot.app"
end
