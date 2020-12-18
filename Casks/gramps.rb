cask "gramps" do
  version "5.1.3,4"
  sha256 "30d4a44d2900c3c8519f90e0b2f7236d3859002b8ba30596b0900c5634a80f33"

  url "https://github.com/gramps-project/gramps/releases/download/v#{version.before_comma}/Gramps-Intel-#{version.before_comma}-#{version.after_comma}.dmg",
      verified: "github.com/gramps-project/gramps/"
  appcast "https://github.com/gramps-project/gramps/releases.atom"
  name "Gramps"
  desc "Genealogy software"
  homepage "https://gramps-project.org/blog/"

  app "Gramps.app"
end
