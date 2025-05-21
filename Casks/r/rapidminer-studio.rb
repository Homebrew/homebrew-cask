cask "rapidminer-studio" do
  version "2025.1.0"
  sha256 "c18722aba4bdd0a1e89c4a35834b5e40c0b2f83135789e443f9074d846561ef6"

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
