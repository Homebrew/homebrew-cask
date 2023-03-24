cask "merlin-project" do
  version "8.1.8,71105"
  sha256 :no_check

  url "https://www.projectwizards.net/downloads/MerlinProject.zip"
  name "Merlin Project"
  desc "Project management application"
  homepage "https://www.projectwizards.net/en/products/merlin-project/what-is"

  livecheck do
    url "https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml"
    strategy :sparkle do |item|
      "#{item.short_version.split.first},#{item.version}"
    end
  end

  depends_on macos: ">= :sierra"

  app "Merlin Project.app"
end
