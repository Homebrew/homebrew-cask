cask "ridibooks" do
  version "0.10.2"
  sha256 "f5e2de0eaef175767821b75d7423a83a86c8b6eaa787147feb4925469c5038bc"

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
