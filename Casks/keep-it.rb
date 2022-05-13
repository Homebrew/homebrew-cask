cask "keep-it" do
  version "1.11.16,10500"
  sha256 "a8a9e26114f7f1e4cf70bb6e0c5315b4fe37ff03cb06d0d0a9102624b5640cf3"

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
