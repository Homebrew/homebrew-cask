cask "merlin-project" do
  version "7.1.2"
  sha256 "1502df38dcd8c56e7e7237bc24c034ab07d7f1eb77d3b8b469cb3d2b6fdd96ca"

  url "https://www.projectwizards.net/downloads/MerlinProject.zip"
  appcast "https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml"
  name "Merlin Project"
  desc "Project management application"
  homepage "https://www.projectwizards.net/en/products/merlin-project/what-is"

  depends_on macos: ">= :sierra"

  app "Merlin Project.app"
end
