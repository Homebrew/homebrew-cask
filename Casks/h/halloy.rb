cask "halloy" do
  version "2026.7.1"
  sha256 "d639ba527f196f5baed344f4c23a72a26dc2c7406057f6022119240c1dd4ad33"

  url "https://github.com/squidowl/halloy/releases/download/#{version}/halloy.dmg",
      verified: "github.com/squidowl/halloy/"
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
