cask "merlin-project" do
  version "6.4.5"
  sha256 "0d0dc8704ae00a261a28bd5a4af7ea863d78cc0b2c75448f2c93568fbcd8d53f"

  url "https://www.projectwizards.net/downloads/MerlinProject.zip"
  appcast "https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml"
  name "Merlin Project"
  desc "Project management application"
  homepage "https://www.projectwizards.net/en/products/merlin-project/what-is"

  depends_on macos: ">= :sierra"

  app "Merlin Project #{version.major}.app"
end
