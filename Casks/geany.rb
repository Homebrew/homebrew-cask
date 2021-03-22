cask "geany" do
  version "1.37,3"
  sha256 "dc8ed9352f0b433503e4d8eef3e6da3e4e2e5d5d1b1b2d63a3e3c85518a74cc5"

  url "https://download.geany.org/geany-#{version.before_comma}_osx#{version.after_comma&.prepend("-")}.dmg"
  name "Geany"
  desc "Fast and lightweight IDE"
  homepage "https://www.geany.org/"

  livecheck do
    url "https://geany.org/download/releases/"
    strategy :page_match do |page|
      match = page.match(/href=.*?geany[._-](\d+(?:\.\d+)+)[._-]osx(?:[._-](\d+))?\.dmg/i)
      match[2] ? "#{match[1]},#{match[2]}" : match[1]
    end
  end

  app "Geany.app"
end
