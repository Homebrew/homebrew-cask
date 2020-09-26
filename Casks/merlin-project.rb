cask "merlin-project" do
  version "6.4.3"
  sha256 "2428d8e28e7c8d929df6287b084ce8b08ec214ab5f193af3185b422036d8a8c9"

  url "https://www.projectwizards.net/downloads/MerlinProject.zip"
  appcast "https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml"
  name "Merlin Project"
  desc "Project management application"
  homepage "https://www.projectwizards.net/en/products/merlin-project/what-is"

  depends_on macos: ">= :sierra"

  app "Merlin Project #{version.major}.app"
end
