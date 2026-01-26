cask "monolingual" do
  version "1.8.2"
  sha256 "d4acf912fa132d7615c88940f5a997505e1880a8d6f9af47f0da427d9e0cd13f"

  url "https://github.com/IngmarStein/Monolingual/releases/download/v#{version}/Monolingual-#{version}.dmg",
      verified: "github.com/IngmarStein/Monolingual/"
  name "Monolingual"
  desc "Utility to remove unnecessary language resources from the system"
  homepage "https://ingmarstein.github.io/Monolingual/"

  app "Monolingual.app"

  zap trash: [
    "~/Library/Application Scripts/com.github.IngmarStein.Monolingual",
    "~/Library/Containers/com.github.IngmarStein.Monolingual",
  ]

  caveats do
    requires_rosetta
  end
end
