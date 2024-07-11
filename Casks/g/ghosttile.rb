cask "ghosttile" do
  version "15,15,1510040474"
  sha256 "6f723c7489a272a82648a3fb2a4ad0f91f6bd3d79eea748ea20a046a3aefe0ab"

  url "https://dl.devmate.com/im.kernelpanic.GhostTile/#{version.csv.second}/#{version.csv.third}/GhostTile-#{version.csv.first}.zip",
      verified: "dl.devmate.com/im.kernelpanic.GhostTile/"
  name "Kernelpanic GhostTile"
  name "GhostTile"
  desc "Hide your running applications from Dock"
  homepage "https://ghosttile.kernelpanic.im/"

  livecheck do
    url "https://updates.devmate.com/im.kernelpanic.GhostTile.xml"
    regex(%r{/(\d+)/GhostTile\d*?[_-]v?(\d+(?:\.\d+)*)\.(?:dmg|zip)}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[2]},#{match[1]}"
    end
  end

  app "GhostTile.app"

  caveats do
    requires_rosetta
  end
end
