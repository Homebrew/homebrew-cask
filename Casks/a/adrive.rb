cask "adrive" do
  arch arm: "-arm64"

  version "4.13.0"
  sha256 arm:   "937a00f7da3319e8be884f040b6b015aef3a65bf9c02ebbc806349ef169ab0bf",
         intel: "7490dffa6013977ae75a4ce2cf0baab13c3a8f7f0cc9fd0e1df1b879769fa2d9"

  url "https://cdn.aliyundrive.net/downloads/apps/desktop/aDrive-#{version}#{arch}.dmg",
      verified: "cdn.aliyundrive.net/"
  name "Aliyundrive"
  name "阿里云盘"
  desc "Intelligent cloud storage platform"
  homepage "https://www.aliyundrive.com/"

  livecheck do
    url "https://www.aliyundrive.com/download"
    regex(/aDrive[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "aDrive.app"

  zap trash: [
    "~/Library/Application Support/aDrive",
    "~/Library/Preferences/com.alicloud.smartdrive.plist",
    "~/Library/Saved Application State/com.alicloud.smartdrive.savedState",
  ]
end
