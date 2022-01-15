cask "go64" do
  # NOTE: "64" is not a version number, but an intrinsic part of the product name
  version "1.3,1301"
  sha256 "75b0d8a39d35eca4d62c93be2d0c3dd2a560b55d6dcbc53136e48ffcea03cabb"

  url "https://www.stclairsoft.com/download/Go64-#{version.csv.first}.zip"
  name "Go64"
  desc "Scan computer disk for 32-bit applications"
  homepage "https://www.stclairsoft.com/Go64/"

  livecheck do
    url "https://www.stclairsoft.com/cgi-bin/sparkle.cgi?GO"
    strategy :sparkle
  end

  auto_updates true

  app "Go64.app"

  zap trash: [
    "~/Library/Saved Application State/com.stclairsoft.Go64.savedState",
    "~/Library/Application Support/com.stclairsoft.Go64",
    "~/Library/Caches/com.stclairsoft.Go64",
    "~/Library/Preferences/com.stclairsoft.Go64.plist",
  ]
end
