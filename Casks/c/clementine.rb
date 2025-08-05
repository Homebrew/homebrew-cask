cask "clementine" do
  version "1.3.1"
  sha256 "825aa66996237e1d3ea2723b24188ead203f298d0bec89f4c3bc6582d9e63e3a"

  url "https://github.com/clementine-player/Clementine/releases/download/#{version}/clementine-#{version}.dmg",
      verified: "github.com/clementine-player/Clementine/"
  name "Clementine"
  desc "Music player and library organiser"
  homepage "https://www.clementine-player.org/"

  deprecate! date: "2024-11-30", because: :discontinued

  app "clementine.app"

  zap trash: [
    "~/Library/Application Support/Clementine",
    "~/Library/Caches/org.clementine-player.Clementine",
    "~/Library/Preferences/org.clementine-player.Clementine.plist",
    "~/Library/Saved Application State/org.clementine-player.Clementine.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
