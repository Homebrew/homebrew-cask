cask "ai-studio" do
  version "2026.0.5"
  sha256 "ad98f985dec101cf812269abf2b37c6c99839f36188ec34b5627c92520a523ff"

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
