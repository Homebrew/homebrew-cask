cask "pichon" do
  version "1.0.10.1,13"
  sha256 :no_check

  url "https://desktop.icons8.com/updates/pichon/Pichon.dmg"
  name "Pichon"
  desc "Search utility for icons8"
  homepage "https://icons8.com/"

  livecheck do
    url "https://desktop.icons8.com/updates/pichon/cast.xml"
    strategy :sparkle
  end

  app "Pichon.app"

  zap trash: [
    "~/Library/Application Support/com.icons8.Pichon",
    "~/Library/Application Support/Pichon",
  ]
end
