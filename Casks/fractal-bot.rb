cask "fractal-bot" do
  version "3.00.06"
  sha256 "32f8ad0cd6f733b176046b1256a5ccf9ce44f1fb7eea25fcb6e159882cee74ab"

  url "https://www.fractalaudio.com/downloads/fractal-bot/Fractal-Bot-OSX-v#{version.tr(".", "p")}.dmg"
  appcast "https://www.fractalaudio.com/fractal-bot/",
          must_contain: "#{version.tr(".", "p")}.dmg"
  name "Fractal Bot"
  desc "Send and receive data to and from your Fractal Audio Systems products"
  homepage "https://www.fractalaudio.com/fractal-bot/"

  app "Fractal-Bot.app"

  zap trash: "~/Library/Application Support/Fractal Audio/Fractal-Bot"
end
