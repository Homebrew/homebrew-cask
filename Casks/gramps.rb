cask "gramps" do
  version "5.1.4,1"
  sha256 "06729b99e3bf8568d0b5b9322cd7a5a55a0af70a2d90f50f9ca5b4a1ebfbc41f"

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
