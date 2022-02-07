cask "gramps" do
  version "5.1.5,1"
  sha256 "16e7416fd1aa48f4e67190123572a02f795b75e1af3b88d67b4dde9a8e1e7dfe"

  url "https://github.com/gramps-project/gramps/releases/download/v#{version.csv.first}/Gramps-Intel-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "github.com/gramps-project/gramps/"
  name "Gramps"
  desc "Genealogy software"
  homepage "https://gramps-project.org/blog/"

  livecheck do
    url "https://github.com/gramps-project/gramps/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/Gramps[._-]Intel[._-]v?(\d+(?:.\d+)+)[._-](\d+)\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Gramps.app"
end
