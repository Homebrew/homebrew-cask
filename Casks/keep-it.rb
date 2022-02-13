cask "keep-it" do
  version "1.11.11,9760"
  sha256 "66b1003292d9935ccd1e2d1070ece3cc8b30ffbab8faf1c45a7bf3e5e43c1404"

  url "https://reinventedsoftware.com/keepit/downloads/KeepIt_#{version.csv.first}.dmg"
  name "Keep It"
  desc "Notebook, scrapbook and organizer tool"
  homepage "https://reinventedsoftware.com/keepit/"

  livecheck do
    url "https://reinventedsoftware.com/keepit/downloads/keepit.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Keep It.app"

  zap trash: [
    "~/Library/Containers/com.reinvented.Keep-It-Indexing",
    "~/Library/Containers/com.reinvented.Keep-It-Metadata",
    "~/Library/Containers/com.reinvented.Keep It",
  ]
end
