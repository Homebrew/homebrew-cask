cask "keep-it" do
  version "1.10.7,8490"
  sha256 "4da7051af237d1ae4cfdee6796b2c41f2899b1e5044da57f757b00d78229068c"

  url "https://reinventedsoftware.com/keepit/downloads/KeepIt_#{version.before_comma}.dmg"
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
