cask "pika" do
  version "0.0.9"
  sha256 "17deb7dec50803e625705f29b40bb0f1bae6881bf57dc0ea7ad255858296fd16"

  url "https://github.com/superhighfives/pika/releases/download/#{version}/Pika-#{version}.dmg",
      verified: "github.com/superhighfives/pika"
  name "Pika"
  desc "Colour picker for colours onscreen"
  homepage "https://superhighfives.com/pika"

  app "Pika.app"
end
