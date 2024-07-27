cask "monolingual" do
  on_el_capitan :or_older do
    version "1.7.3"
    sha256 "24fa5ff0a5903c0eb07cd58a15292e3adab97ea0823f304241dc4187f9252ffc"
  end
  on_sierra do
    version "1.7.8"
    sha256 "42771c3c4d615a39ab502d7723f3c7d23e6b384b56bbcebcbdd5a04cf2495c41"
  end
  on_high_sierra :or_newer do
    version "1.8.2"
    sha256 "d4acf912fa132d7615c88940f5a997505e1880a8d6f9af47f0da427d9e0cd13f"
  end

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
