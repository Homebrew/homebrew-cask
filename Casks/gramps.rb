cask "gramps" do
  version "5.1.4,5"
  sha256 "b50494b5b851121989695c1ed41f0512de5da6e907dc94fe6cd06b95149f7ac6"

  url "https://github.com/gramps-project/gramps/releases/download/v#{version.csv.first}/Gramps-Intel-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "github.com/gramps-project/gramps/"
  name "Gramps"
  desc "Genealogy software"
  homepage "https://gramps-project.org/blog/"

  livecheck do
    url "https://github.com/gramps-project/gramps/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/Gramps-Intel-(\d+(?:.\d+)*)-(\d+)\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Gramps.app"
end
