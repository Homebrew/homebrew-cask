cask "ai-studio" do
  version "2026.1.1"
  sha256 "39936193aac589e127535bc2660a1d744dac8d83ec16243b5b1af28332f305f1"

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
