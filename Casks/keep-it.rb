cask "keep-it" do
  version "1.8.15"
  sha256 "fcb074ee621d7ee190bc5b93908e482561058269f1f71acdcf0714aa7cd783c9"

  url "https://reinventedsoftware.com/keepit/downloads/KeepIt_#{version}.dmg"
  appcast "https://reinventedsoftware.com/keepit/downloads/keepit.xml"
  name "Keep It"
  homepage "https://reinventedsoftware.com/keepit/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Keep It.app"

  zap trash: [
    "~/Library/Containers/com.reinvented.Keep-It-Indexing",
    "~/Library/Containers/com.reinvented.Keep-It-Metadata",
    "~/Library/Containers/com.reinvented.Keep It",
  ]
end
