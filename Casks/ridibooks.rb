cask "ridibooks" do
  version "0.9.5"
  sha256 "998e1b11e54fcf4e20ac29029142306106d3418a9e259f5c233e66e2ce8f0cfc"

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
