cask "fontforge" do
  version "2020-11-07,21ad4a1"
  sha256 "64e7193485b2047ff497ec43a39793e18593b2702a0724810f8c2c8ca8a34999"

  url "https://github.com/fontforge/fontforge/releases/download/#{version.csv.first.no_hyphens}/FontForge-#{version.csv.first}-#{version.csv.second}.app.dmg",
      verified: "github.com/fontforge/fontforge/"
  name "FontForge"
  desc "Font editor and converter for outline and bitmap fonts"
  homepage "https://fontforge.github.io/en-US/"

  livecheck do
    url "https://github.com/fontforge/fontforge/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/FontForge-(\d+(?:-\d+)*)-([0-9a-f]+)\.app\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  app "FontForge.app"

  zap trash: "~/.cache/fontforge"
end
