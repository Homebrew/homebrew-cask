cask "merlin-project" do
  version "8.2.0"
  sha256 :no_check

  url "https://www.projectwizards.net/downloads/MerlinProject.zip"
  name "Merlin Project"
  desc "Project management application"
  homepage "https://www.projectwizards.net/en/products/merlin-project/what-is"

  livecheck do
    url "https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :mojave"

  app "Merlin Project.app"

  zap trash: [
    "~/Library/Application Scripts/net.projectwizards.merlinproject",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.projectwizards.merlinproject.sfl*",
    "~/Library/Containers/net.projectwizards.merlinproject",
  ]
end
