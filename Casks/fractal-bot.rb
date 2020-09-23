cask "fractal-bot" do
  version "3.00.05"
  sha256 "33e54d885a9d5d646d8ec05505bd4628815a243e4d8947687f7e1ca7a38296dc"

  url "https://www.fractalaudio.com/downloads/fractal-bot/Fractal-Bot-OSX-v#{version.tr(".", "p")}.dmg"
  appcast "https://www.fractalaudio.com/fractal-bot/",
          must_contain: "#{version.tr(".", "p")}.dmg"
  name "Fractal Bot"
  homepage "https://www.fractalaudio.com/fractal-bot/"

  app "Fractal-Bot.app"

  zap trash: "~/Library/Application Support/Fractal Audio/Fractal-Bot"
end
