cask "go64" do
  # NOTE: "64" is not a version number, but an intrinsic part of the product name
  version "1.2"
  sha256 "f09c80e158b5e40ecb888367ef963c42b1bc43c5420ff3507de04681063dfc54"

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
