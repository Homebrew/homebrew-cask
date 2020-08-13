cask "keep-it" do
  version "1.8.13"
  sha256 "c60308eb91ddaee3b1c7d295fee47f53fbdefb11360fd124a3df648b576eba68"

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
