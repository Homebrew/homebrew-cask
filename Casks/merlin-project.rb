cask "merlin-project" do
  version "7.0.0"
  sha256 "f24b86ee4820fb2f5bcfb8f24e70cd005eb544678ebb00d80837a771527ed6e6"

  url "https://www.projectwizards.net/downloads/MerlinProject.zip"
  appcast "https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml"
  name "Merlin Project"
  desc "Project management application"
  homepage "https://www.projectwizards.net/en/products/merlin-project/what-is"

  depends_on macos: ">= :sierra"

  app "Merlin Project.app"
end
