cask "readmoreading" do
  version "0.14.5"
  sha256 "4f9f3fa50fe382ac804a1211363f5753deb0ad9c2334f5263d8f86afc08a98c3"

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
