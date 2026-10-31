cask "fractal-bot" do
  version "3.01.00"
  sha256 "de9ec7a5dbf314310531bef7b7fd6d8b59b41cdcf33e7982054ae85ff664a099"

  url "https://www.fractalaudio.com/downloads/fractal-bot/Fractal-Bot-Mac-v#{version.tr(".", "p")}.dmg"
  name "Fractal Bot"
  desc "Send and receive data to and from your Fractal Audio Systems products"
  homepage "https://www.fractalaudio.com/fractal-bot/"

  livecheck do
    url :homepage
    regex(/Version\s*(\d+(?:\.\d+)+).*?\.dmg/i)
  end

  depends_on :macos

  app "Fractal-Bot.app"

  zap trash: "~/Library/Application Support/Fractal Audio/Fractal-Bot"
end
