cask "fractal-bot" do
  version "3.0.5"
  sha256 "6b4558280e68d65814ba04bc98d59f809a2f32d76b5d6b60d478ca417d2dfae1"

  url "https://www.fractalaudio.com/downloads/fractal-bot/Fractal-Bot-OSX-v#{version.tr(".", "p")}.dmg"
  appcast "https://www.fractalaudio.com/fractal-bot/",
          must_contain: "#{version.tr(".", "p")}.dmg"
  name "Fractal Bot"
  homepage "https://www.fractalaudio.com/fractal-bot/"

  app "Fractal-Bot.app"

  zap trash: "~/Library/Application Support/Fractal Audio/Fractal-Bot"
end
