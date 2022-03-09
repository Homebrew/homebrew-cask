cask "fontforge" do
  version "2022-03-08,74e2eca"
  sha256 "79f770c692287520fdd6001ec97af7d67b79eed985bf1e44bb97ab57fcedc517"

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
