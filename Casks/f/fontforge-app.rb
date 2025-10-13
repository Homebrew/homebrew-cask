cask "fontforge-app" do
  version "2025-10-09"
  sha256 "ba9f883389188d822a36cd447e9a9940a2bf4c4254f49f9fa3aa622a69b73110"

  url "https://github.com/fontforge/fontforge/releases/download/#{version.csv.first.no_hyphens}/FontForge-#{version.csv.first}-MacOS.app.dmg",
      verified: "github.com/fontforge/fontforge/"
  name "FontForge"
  desc "Font editor and converter for outline and bitmap fonts"
  homepage "https://fontforge.github.io/en-US/"

  livecheck do
    url :url
    regex(/^FontForge[._-]v?(\d+(?:-\d+)+)(?:[._-]MacOS\.app)?\.dmg/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :ventura"

  app "FontForge.app"

  zap trash: "~/.cache/fontforge"

  caveats do
    requires_rosetta
  end
end
