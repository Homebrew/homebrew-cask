cask "amitv87-pip" do
  version "2.50"
  sha256 "9c85f914b34e85482c9f3012a196ef81dff783c5d79465a802340720da423cb4"

  url "https://github.com/amitv87/PiP/releases/download/v#{version}/PiP-#{version}.dmg"
  name "PiP"
  desc "Always on top window preview"
  homepage "https://github.com/amitv87/PiP"

  depends_on macos: ">= :sierra"

  app "PiP.app"

  zap trash: "~/Library/Saved Application State/com.boggyb.PiP.savedState"
end
