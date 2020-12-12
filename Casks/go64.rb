cask "go64" do
  # NOTE: "64" is not a version number, but an intrinsic part of the product name
  version "1.2"
  sha256 "ef8d2ab472f27ce02007dbf73027d73e8b965e71e12693c78d701a5afe811c20"

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
