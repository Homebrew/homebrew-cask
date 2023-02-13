cask "readmoreading" do
  version "0.13.16"
  sha256 "7b8f7c5360e81d7ed98c1b998df9922a1c880aadff52702ae9707135782a244b"

  url "https://cdn.readmoo.com/download/apps/desktop/osx64/el/beta/Readmoo_Desktop-#{version}.dmg"
  name "Readmo Reading"
  desc "Traditional Chinese eBook service"
  homepage "https://readmoo.com/"

  livecheck do
    url "https://readmoo.com/download/osx"
    strategy :header_match
  end

  app "Readmoo看書.app"

  zap trash: [
    "~/Library/Application Support/Readmoo看書",
    "~/Library/Logs/Readmoo看書",
    "~/Library/Preferences/com.readmoo.electron.plist",
    "~/Library/Saved Application State/com.readmoo.electron.savedState",
  ]
end
