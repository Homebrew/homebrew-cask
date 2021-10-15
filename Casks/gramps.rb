cask "gramps" do
  version "5.1.4,4"
  sha256 "19e3a99cbbfe19e886614857e28a6fbe7249603d9c706430128784e290d72def"

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
