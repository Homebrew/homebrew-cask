cask "fractal-bot" do
  version "3.00.18"
  sha256 "ed87111748218ba06e396bbf3436cb7d810091caf5d2ce95d04083d2f6063e10"

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
