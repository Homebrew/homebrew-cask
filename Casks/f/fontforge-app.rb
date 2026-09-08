cask "fontforge-app" do
  os macos: "MacOS.app.dmg", linux: "Linux-x86_64.AppImage"

  version "2025-10-09"

  on_macos do
    sha256 "ba9f883389188d822a36cd447e9a9940a2bf4c4254f49f9fa3aa622a69b73110"

    disable! date: "2026-09-01", because: :fails_gatekeeper_check

    depends_on macos: :ventura

    app "FontForge.app"

    caveats do
      requires_rosetta
    end
  end
  on_linux do
    sha256 "bf72ec45305c663da7d2288822b7d2cfc37846716322bdca4075273c0cef8294"

    depends_on arch: :x86_64

    app_image "FontForge-#{version.csv.first}-Linux-x86_64.AppImage", target: "FontForge.AppImage"
  end

  url "https://github.com/fontforge/fontforge/releases/download/#{version.csv.first.no_hyphens}/FontForge-#{version.csv.first}-#{os}"
  name "FontForge"
  desc "Font editor and converter for outline and bitmap fonts"
  homepage "https://fontforge.github.io/en-US/"

  livecheck do
    url :url
    regex(/^FontForge[._-]v?(\d+(?:-\d+)+)[._-]#{os}/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  zap trash: [
    "~/.cache/fontforge",
    "~/.config/fontforge",
  ]
end
