cask "go64" do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version "1.1.1"
  sha256 "1eb0eb8766b531827a26743d4d0650fdba7a436707d6439bb96781bf29dbe3c5"

  url "https://www.stclairsoft.com/download/Go64-#{version}.zip"
  appcast "https://www.stclairsoft.com/cgi-bin/sparkle.cgi?GO"
  name "Go64"
  desc "Scan computer disk for 32-bit applications"
  homepage "https://www.stclairsoft.com/Go64/"

  auto_updates true

  app "Go64.app"

  zap trash: [
    "~/Library/Saved Application State/com.stclairsoft.Go64.savedState",
    "~/Library/Application Support/com.stclairsoft.Go64",
    "~/Library/Caches/com.stclairsoft.Go64",
    "~/Library/Preferences/com.stclairsoft.Go64.plist",
  ]
end
