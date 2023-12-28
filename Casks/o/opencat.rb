cask "opencat" do
  version "2.0.3,412"
  sha256 "0c1e5cad1df94400bb2111599e8fd6610a2f7ec300bb2ece8df396b896d2b4ab"

  url "https://opencat.app/releases/OpenCat-#{version.csv.first}.#{version.csv.second}.dmg"
  name "opencat"
  desc "Native AI chat client"
  homepage "https://opencat.app/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :ventura"

  app "OpenCat.app"

  zap trash: [
    "~/Library/Application Scripts/tech.baye.OpenCat",
    "~/Library/Containers/tech.baye.OpenCat",
    "~/Library/Group Containers/group.tech.baye.openai",
    "~/Library/Saved Application State/tech.baye.OpenCat.savedState",
    "/var/db/receipts/tech.baye.OpenCat.bom",
    "/var/db/receipts/tech.baye.OpenCat.plist",
  ]
end
