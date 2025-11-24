cask "ai-studio" do
  version "2026.0.2"
  sha256 "02423a5f4a1c87cfe12d0e9ab7cfe8dcca90e6ee711a5017240e9aa362915d1a"

  url "https://releases.rapidminer.com/archive/rapidminer-studio/#{version}/ai-studio-osx-#{version}.dmg",
      verified: "releases.rapidminer.com/"
  name "Altair AI Studio"
  desc "Data science platform"
  homepage "https://altair.com/altair-rapidminer"

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
