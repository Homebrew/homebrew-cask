cask "keep-it" do
  version "1.10.6,8466"
  sha256 "79ab6a3ea795765a3475f434b2e93fa0c564fe58b81a81060c1624c9af738f2e"

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
