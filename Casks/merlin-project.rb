cask "merlin-project" do
  version "7.1.0"
  sha256 "65e24a7fe992f3eab7aca7b0f9a5455e85943268c418a3fc37928b5a452147c7"

  url "https://www.projectwizards.net/downloads/MerlinProject.zip"
  appcast "https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml"
  name "Merlin Project"
  desc "Project management application"
  homepage "https://www.projectwizards.net/en/products/merlin-project/what-is"

  depends_on macos: ">= :sierra"

  app "Merlin Project.app"
end
