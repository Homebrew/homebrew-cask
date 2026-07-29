cask "go64" do
  # NOTE: "64" is not a version number, but an intrinsic part of the product name
  version "1.5"
  sha256 "1909511d64852e7b203357d37f7c1db4c01cb869a3e703ce338737d59b27188d"

  url "https://www.stclairsoft.com/download/Go64-#{version}.zip"
  name "Go64"
  desc "Scan computer disk for 32-bit applications"
  homepage "https://www.stclairsoft.com/Go64/"

  livecheck do
    url "https://www.stclairsoft.com/cgi-bin/sparkle.cgi?GO"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "Go64.app"

  zap trash: [
    "~/Library/Application Support/com.stclairsoft.Go64",
    "~/Library/Caches/com.stclairsoft.Go64",
    "~/Library/HTTPStorages/com.stclairsoft.Go64",
    "~/Library/Preferences/com.stclairsoft.Go64.plist",
    "~/Library/Saved Application State/com.stclairsoft.Go64.savedState",
  ]
end
