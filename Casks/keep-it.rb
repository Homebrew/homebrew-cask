cask "keep-it" do
  version "1.9.5"
  sha256 "e5010a9c5ea85dc7fa6998cd6935c03cc5b4ba414012a04555be4cb511f70441"

  url "https://reinventedsoftware.com/keepit/downloads/KeepIt_#{version}.dmg"
  appcast "https://reinventedsoftware.com/keepit/downloads/keepit.xml"
  name "Keep It"
  desc "Notebook, scrapbook and organizer tool"
  homepage "https://reinventedsoftware.com/keepit/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Keep It.app"

  zap trash: [
    "~/Library/Containers/com.reinvented.Keep-It-Indexing",
    "~/Library/Containers/com.reinvented.Keep-It-Metadata",
    "~/Library/Containers/com.reinvented.Keep It",
  ]
end
