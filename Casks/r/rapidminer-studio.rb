cask "rapidminer-studio" do
  version "2025.1.1"
  sha256 "d6071ffcd9e800baa63d1ed0a572b66d255fc193ad4c8508f438f4f551f953a1"

  url "https://releases.rapidminer.com/archive/rapidminer-studio/#{version}/ai-studio-osx-#{version}.dmg"
  name "RapidMiner Studio"
  desc "Data science platform"
  homepage "https://rapidminer.com/products/studio/"

  livecheck do
    url "https://releases.rapidminer.com/latest/rapidminer-studio/rapidminer-studio-osx.dmg"
    strategy :header_match
  end

  app "AI Studio #{version}.app"

  zap trash: "~/.RapidMiner",
      rmdir: "~/Documents/RapidMiner"

  caveats do
    requires_rosetta
  end
end
