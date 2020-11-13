cask "merlin-project" do
  version "7.0.1"
  sha256 "f427f8b77c285d7db7239b0f94c19fb591d5839537e79d931abc686bd8beeddf"

  url "https://www.projectwizards.net/downloads/MerlinProject.zip"
  appcast "https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml"
  name "Merlin Project"
  desc "Project management application"
  homepage "https://www.projectwizards.net/en/products/merlin-project/what-is"

  depends_on macos: ">= :sierra"

  app "Merlin Project.app"
end
