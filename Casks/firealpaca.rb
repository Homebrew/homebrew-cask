cask "firealpaca" do
  version :latest
  sha256 :no_check

  url "https://firealpaca.com/download/mac",
      referer: "https://firealpaca.com/"
  name "Fire Alpaca"
  homepage "https://firealpaca.com/"

  app "FireAlpaca.app"

  zap trash: "~/Library/Application Support/FireAlpaca"
end
