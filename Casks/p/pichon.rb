cask "pichon" do
  version "1.7.1"
  sha256 :no_check

  url "https://desktop.icons8.com/updates/pichon/Pichon.dmg"
  name "Pichon"
  desc "Search utility for icons8"
  homepage "https://icons8.com/"

  livecheck do
    url "https://desktop.icons8.com/updates/pichon/cast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :catalina"

  app "Pichon.app"

  zap trash: [
    "~/Library/Application Support/com.icons8.Pichon",
    "~/Library/Application Support/Pichon",
  ]
end
