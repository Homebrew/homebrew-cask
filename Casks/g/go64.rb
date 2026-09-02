cask "go64" do
  # NOTE: "64" is not a version number, but an intrinsic part of the product name
  version "1.5.1"
  sha256 "9347cfa50079aebaa590e9c320d55e19cdd39f5203f9c25f21ad20f0ff762e88"

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
