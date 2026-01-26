cask "halloy" do
  version "2026.1.1"
  sha256 "e64f385f5288c0d05a2d344cc437398c05deb3f1c370e942c5db08671ed0bf24"

  url "https://github.com/squidowl/halloy/releases/download/#{version}/halloy.dmg",
      verified: "github.com/squidowl/halloy/"
  name "Halloy"
  desc "IRC client"
  homepage "https://halloy.chat/"

  depends_on macos: ">= :big_sur"

  app "Halloy.app"

  zap trash: [
    "~/Library/Application Support/halloy",
    "~/Library/Saved Application State/org.squidowl.halloy.savedState",
  ]
end
