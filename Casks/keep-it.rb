cask "keep-it" do
  version "1.10.9,8614"
  sha256 "9d6634117d625d787a21dedd76b80142a13cea2b53fa8abe35ceea9425312584"

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
