cask "keep-it" do
  version "1.11.16"
  sha256 "a8a9e26114f7f1e4cf70bb6e0c5315b4fe37ff03cb06d0d0a9102624b5640cf3"

  url "https://reinventedsoftware.com/keepit/downloads/KeepIt_#{version}.dmg"
  name "Keep It"
  desc "Notebook, scrapbook and organiser tool"
  homepage "https://reinventedsoftware.com/keepit/"

  livecheck do
    url "https://reinventedsoftware.com/keepit/downloads/keepit.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Keep It.app"

  zap trash: [
    "~/Library/Containers/com.reinvented.Keep It",
    "~/Library/Containers/com.reinvented.Keep-It-Indexing",
    "~/Library/Containers/com.reinvented.Keep-It-Metadata",
  ]
end
