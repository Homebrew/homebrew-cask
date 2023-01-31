cask "readmoreading" do
  version "0.13.10"
  sha256 "2900f9ea43f112488176994839dfdd368e46edd709fa7fdb8eccdd5802ea0086"

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
