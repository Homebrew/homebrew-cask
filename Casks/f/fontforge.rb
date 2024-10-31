cask "fontforge" do
  version "2023-01-01,a1dad3e"
  sha256 "b87479dbb8f8f9131ea37983aae63542f016aa182232be5c6a56976350b3ebfd"

  url "https://github.com/fontforge/fontforge/releases/download/#{version.csv.first.no_hyphens}/FontForge-#{version.csv.first}-#{version.csv.second}.app.dmg",
      verified: "github.com/fontforge/fontforge/"
  name "FontForge"
  desc "Font editor and converter for outline and bitmap fonts"
  homepage "https://fontforge.github.io/en-US/"

  livecheck do
    url :url
    regex(/^FontForge[._-]v?(\d+(?:-\d+)+)-(\h+)\.app\.dmg/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on macos: ">= :catalina"

  app "FontForge.app"

  zap trash: "~/.cache/fontforge"

  caveats do
    requires_rosetta
  end
end
