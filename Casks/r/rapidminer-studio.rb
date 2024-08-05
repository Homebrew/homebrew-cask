cask "rapidminer-studio" do
  version "2024.0.3"
  sha256 :no_check

  url "https://releases.rapidminer.com/latest/rapidminer-studio/rapidminer-studio-osx.dmg"
  name "RapidMiner Studio"
  desc "Data science platform"
  homepage "https://rapidminer.com/products/studio/"

  livecheck do
    url :url
    strategy :header_match
  end

  app "AI Studio #{version}.app"

  zap trash: "~/.RapidMiner",
      rmdir: "~/Documents/RapidMiner"

  caveats do
    requires_rosetta
  end
end
