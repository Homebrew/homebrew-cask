cask "geany" do
  version "2.0"
  sha256 "c42991517d1a94920c8f39f159d6707ee093347321e5acb8ef6a11fd094adf4e"

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

  zap trash: [
    "~/.cache/geany",
    "~/.config/geany",
  ]
end
