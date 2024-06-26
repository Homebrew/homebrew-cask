cask "firealpaca" do
  version "2.11.25"
  sha256 :no_check

  url "https://firealpaca.com/download/mac",
      referer: "https://firealpaca.com/"
  name "Fire Alpaca"
  desc "Digital painting software"
  homepage "https://firealpaca.com/"

  livecheck do
    url :homepage
    regex(/Version\s*:\s*(\d+(?:\.\d+)+)/i)
  end

  app "FireAlpaca.app"

  zap trash: "~/Library/Application Support/FireAlpaca"
end
