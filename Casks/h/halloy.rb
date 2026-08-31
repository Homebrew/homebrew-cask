cask "halloy" do
  version "2026.8"
  sha256 "9e6456c7606cedac34be692527e1566ea0b89175747ad9b8e9ab4722e10cb215"

  url "https://github.com/squidowl/halloy/releases/download/#{version}/halloy.dmg"
  name "Halloy"
  desc "IRC client"
  homepage "https://halloy.chat/"

  depends_on macos: :big_sur

  app "Halloy.app"

  zap trash: [
    "~/Library/Application Support/halloy",
    "~/Library/Saved Application State/org.squidowl.halloy.savedState",
  ]
end
