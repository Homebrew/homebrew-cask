cask "readmoreading" do
  version "0.13.48"
  sha256 "98fd534d9977c4eb27776ce39c7d2d94bad5e453e81293609c9fc126da79f748"

  url "https://cdn.readmoo.com/download/apps/desktop/osx64/el/Readmoo_Desktop-#{version}.dmg"
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
