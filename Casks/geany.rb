cask "geany" do
  version "1.38"
  sha256 "8467c87377672e271dab0144cb96f0c4b46b48ce6d5df5223bb39b5a32350f84"

  url "https://download.geany.org/geany-#{version}_osx.dmg"
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
