cask "ridibooks" do
  version "0.11.6"
  sha256 "fd0ad5b44a05441c2aac16d08e361dc1099f6e90d6116a4e482a41b39d7db19f"

  url "https://viewer-ota.ridicdn.net/pc_electron/Ridibooks-#{version}-universal.dmg",
      verified: "viewer-ota.ridicdn.net/pc_electron/"
  name "Ridibooks"
  desc "Ebook reader"
  homepage "https://ridibooks.com/support/app/download"

  livecheck do
    url "https://s3-ap-northeast-2.amazonaws.com/viewer-ota.ridicdn.net/pc_electron/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :sierra"

  app "Ridibooks.app"

  zap trash: [
    "~/Library/Application Support/RIDI",
    "~/Library/Preferences/com.ridibooks.Ridibooks.plist",
  ]
end
