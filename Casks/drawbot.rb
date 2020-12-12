cask "drawbot" do
  version "3.126"
  sha256 "6476c9e5f4dedaf89ea7400d6b431b11fea56012971bdbe148eb081938f9bade"

  # github.com/typemytype/drawbot/ was verified as official when first introduced to the cask
  url "https://github.com/typemytype/drawbot/releases/download/#{version}/DrawBot.dmg"
  appcast "https://github.com/typemytype/drawbot/releases.atom"
  name "DrawBot"
  desc "Write Python scripts to generate two-dimensional graphics"
  homepage "https://www.drawbot.com/"

  app "DrawBot.app"
end
