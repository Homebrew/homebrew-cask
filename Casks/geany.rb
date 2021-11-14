cask "geany" do
  version "1.38,3"
  sha256 "eb2dfa9ff71af5214f0bdb6dfbf487a212a1f95a16ab035c5d46a5b024a48c97"

  url "https://download.geany.org/geany-#{version.before_comma}_osx#{version.after_comma&.prepend("-")}.dmg"
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
