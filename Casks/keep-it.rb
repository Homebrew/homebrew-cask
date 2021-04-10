cask "keep-it" do
  version "1.10.4,8275"
  sha256 "2831fd64973abdd13a904065d00130bfbeb4d2c7ce2f7a355c9b9a0ce8515f3e"

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
