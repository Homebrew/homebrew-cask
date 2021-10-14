cask "gramps" do
  version "5.1.4,3"
  sha256 "2e780ada1aeea7803094f190afecde6ed321840974a8925a8f711ba9f879c3bd"

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
