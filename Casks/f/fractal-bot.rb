cask "fractal-bot" do
  version "3.00.19"
  sha256 "fd0b6bb5aac0a730d750085c59db6266431bdc2e014fe91e9945462f95e1ed59"

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
