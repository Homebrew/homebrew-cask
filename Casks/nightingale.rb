cask "nightingale" do
  version "1.12.1,2454"
  sha256 "f1a07e5bb6e069ac2f9fdc89c7708d3badb3b41e27199920a6d55b462764c454"

  url "https://github.com/nightingale-media-player/nightingale-hacking/releases/download/nightingale-#{version.before_comma}/Nightingale_#{version.before_comma}-#{version.after_comma}_macosx-i686.dmg",
      verified: "github.com/nightingale-media-player/nightingale-hacking/"
  name "Nightingale"
  desc "Working tree for the community fork of Songbird"
  homepage "https://getnightingale.com/"

  livecheck do
    url "https://github.com/nightingale-media-player/nightingale-hacking/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/Nightingale_(\d+(?:\.\d+)*)-(\d+)_macosx-i686\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "Nightingale.app"
end
