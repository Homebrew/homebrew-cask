cask "monolingual" do
  on_arm do
    version "2.0.1"
    sha256 "91395c2acd5f2b9a32bfeb13dd46ac06c4730f0cf7da9a5565ef3ae3bd501ede"

    depends_on macos: :golden_gate
  end
  on_intel do
    version "1.8.2"
    sha256 "d4acf912fa132d7615c88940f5a997505e1880a8d6f9af47f0da427d9e0cd13f"

    livecheck do
      skip "Legacy version"
    end

    depends_on macos: :monterey
  end

  url "https://github.com/IngmarStein/Monolingual/releases/download/v#{version}/Monolingual-#{version}.dmg"
  name "Monolingual"
  desc "Utility to remove unnecessary language resources from the system"
  homepage "https://ingmarstein.github.io/Monolingual/"

  depends_on :macos

  app "Monolingual.app"

  zap trash: [
    "~/Library/Application Scripts/com.github.IngmarStein.Monolingual",
    "~/Library/Containers/com.github.IngmarStein.Monolingual",
  ]
end
