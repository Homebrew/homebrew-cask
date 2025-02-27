cask "rapidminer-studio" do
  version "2025.0.1"
  sha256 "abc0d19a433d6c736bbb9981435bd95aadc3ceb5f7483e6f25f0ee3837e25775"

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
