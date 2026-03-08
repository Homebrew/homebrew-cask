cask "firealpaca" do
  version "2.15.2"
  sha256 :no_check

  url "https://firealpaca.com/download/mac",
      referer: "https://firealpaca.com/"
  name "Fire Alpaca"
  desc "Digital painting software"
  homepage "https://firealpaca.com/"

  livecheck do
    url :url
    strategy :header_match
  end

  depends_on macos: ">= :monterey"

  app "FireAlpaca.app"

  zap trash: "~/Library/Application Support/FireAlpaca"
end
