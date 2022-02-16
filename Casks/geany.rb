cask "geany" do
  version "1.38,4"
  sha256 "f9882c1ea469c57d8c6d00012d0dc59735efeb48b0c504cccd13f03bb5184bed"

  url "https://download.geany.org/geany-#{version.csv.first}_osx#{version.csv.second&.prepend("-")}.dmg"
  name "Geany"
  desc "Fast and lightweight IDE"
  homepage "https://www.geany.org/"

  livecheck do
    url "https://geany.org/download/releases/"
    strategy :page_match do |page|
      match = page.match(/href=.*?geany[._-](\d+(?:\.\d+)+)[._-]osx(?:[._-](\d+))?\.dmg/i)
      next if match.blank?

      match[2] ? "#{match[1]},#{match[2]}" : match[1]
    end
  end

  app "Geany.app"
end
