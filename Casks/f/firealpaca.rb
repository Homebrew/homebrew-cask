cask "firealpaca" do
  version "2.13.4"
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

  app "FireAlpacaMac_#{version.dots_to_underscores}.app"

  zap trash: "~/Library/Application Support/FireAlpaca"

  caveats do
    requires_rosetta
  end
end
