cask "fractal-bot" do
  version "3.00.21"
  sha256 "351d996ab4872746e19d734cf7a524d56185e093b4b5fc28ba7a6f72c7f725fa"

  url "https://www.fractalaudio.com/downloads/fractal-bot/Fractal-Bot-OSX-v#{version.tr(".", "p")}.dmg"
  name "Fractal Bot"
  desc "Send and receive data to and from your Fractal Audio Systems products"
  homepage "https://www.fractalaudio.com/fractal-bot/"

  livecheck do
    url :homepage
    regex(/Version\s*(\d+(?:\.\d+)+).*?\.dmg/i)
  end

  app "Fractal-Bot.app"

  zap trash: "~/Library/Application Support/Fractal Audio/Fractal-Bot"
end
