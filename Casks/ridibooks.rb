cask "ridibooks" do
  version "0.9.1"
  sha256 "f027c9609c56345a27105bab272790a0e213bb7c67c480124fb93376413023a3"

  url "https://viewer-ota.ridicdn.net/pc_electron/Ridibooks-#{version}.dmg",
      verified: "viewer-ota.ridicdn.net/pc_electron/"
  name "Ridibooks"
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
