cask "fontforge" do
  version "2020.03.14.67687b0"
  sha256 "394e4b1d216abd3d716dba94d9b6c7eacfdd9b3fa0c48d29fcaa1e27695593ce"

  # github.com/fontforge/fontforge/ was verified as official when first introduced to the cask
  url "https://github.com/fontforge/fontforge/releases/download/#{version.major_minor_patch.no_dots}/FontForge-#{version.dots_to_hyphens}.app.dmg"
  appcast "https://github.com/fontforge/fontforge/releases.atom",
          must_contain: version.major_minor_patch.dots_to_hyphens
  name "FontForge"
  desc "Font editor and converter for outline and bitmap fonts"
  homepage "https://fontforge.github.io/en-US/"

  depends_on macos: ">= :yosemite"

  app "FontForge.app"

  zap trash: "~/.cache/fontforge"
end
