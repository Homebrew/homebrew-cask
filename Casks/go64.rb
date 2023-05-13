cask "go64" do
  # NOTE: "64" is not a version number, but an intrinsic part of the product name
  version "1.4"
  sha256 "f12025face61f2d1c33b11445a5fb635c0bd92252d7f4e79ab791102d7c4cd78"

  url "https://www.stclairsoft.com/download/Go64-#{version}.zip"
  name "Go64"
  desc "Scan computer disk for 32-bit applications"
  homepage "https://www.stclairsoft.com/Go64/"

  livecheck do
    url "https://www.stclairsoft.com/cgi-bin/sparkle.cgi?GO"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Go64.app"

  zap trash: [
    "~/Library/Application Support/com.stclairsoft.Go64",
    "~/Library/Caches/com.stclairsoft.Go64",
    "~/Library/Preferences/com.stclairsoft.Go64.plist",
    "~/Library/Saved Application State/com.stclairsoft.Go64.savedState",
  ]
end
