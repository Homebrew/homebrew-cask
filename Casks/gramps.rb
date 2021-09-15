cask "gramps" do
  version "5.1.4,2"
  sha256 "dc8e2518a8d17650edaada09ee1fa6b1e42ca440bd14c5fbd0d35d93499e5550"

  url "https://github.com/gramps-project/gramps/releases/download/v#{version.before_comma}/Gramps-Intel-#{version.before_comma}-#{version.after_comma}.dmg",
      verified: "github.com/gramps-project/gramps/"
  name "Gramps"
  desc "Genealogy software"
  homepage "https://gramps-project.org/blog/"

  livecheck do
    url "https://github.com/gramps-project/gramps/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/Gramps-Intel-(\d+(?:.\d+)*)-(\d+)\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "Gramps.app"
end
