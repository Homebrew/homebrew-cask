cask "keep-it" do
  version "1.11.7,9298"
  sha256 "45aa68c770c282df81614d3b54dbf727e3f661bb64f1392eecd9cf22aad0e0ae"

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
