cask "fractal-bot" do
  version "3.0.6"
  sha256 "016b1039de30f3ac8bb4563bdb60f7f4c3368bcdcadf9dbd856cf332a567f02e"

  url "https://www.fractalaudio.com/downloads/fractal-bot/Fractal-Bot-OSX-v#{version.tr(".", "p")}.dmg"
  appcast "https://www.fractalaudio.com/fractal-bot/",
          must_contain: "#{version.tr(".", "p")}.dmg"
  name "Fractal Bot"
  homepage "https://www.fractalaudio.com/fractal-bot/"

  app "Fractal-Bot.app"

  zap trash: "~/Library/Application Support/Fractal Audio/Fractal-Bot"
end
