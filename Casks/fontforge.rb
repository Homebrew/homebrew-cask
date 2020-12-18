cask "fontforge" do
  version "2020.11.07.21ad4a1"
  sha256 "64e7193485b2047ff497ec43a39793e18593b2702a0724810f8c2c8ca8a34999"

  url "https://github.com/fontforge/fontforge/releases/download/#{version.major_minor_patch.no_dots}/FontForge-#{version.dots_to_hyphens}.app.dmg",
      verified: "github.com/fontforge/fontforge/"
  appcast "https://github.com/fontforge/fontforge/releases.atom",
          must_contain: version.major_minor_patch.dots_to_hyphens
  name "FontForge"
  desc "Font editor and converter for outline and bitmap fonts"
  homepage "https://fontforge.github.io/en-US/"

  depends_on macos: ">= :yosemite"

  app "FontForge.app"

  zap trash: "~/.cache/fontforge"
end
