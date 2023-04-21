cask "firealpaca" do
  version "2.10.1"
  sha256 :no_check

  url "https://firealpaca.com/download/mac",
      referer: "https://firealpaca.com/"
  name "Fire Alpaca"
  homepage "https://firealpaca.com/"

  livecheck do
    url :homepage
    regex(/Version\s*:\s*<[^>]+>\s*(\d+(?:\.\d+)+)/i)
  end

  app "FireAlpaca.app"

  zap trash: "~/Library/Application Support/FireAlpaca"
end
