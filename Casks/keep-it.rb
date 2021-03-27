cask "keep-it" do
  version "1.10.2,8200"
  sha256 "7a7bd4fe5b521c5637810686039a395428803a86997c4b6dbf53944699c17ab6"

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
