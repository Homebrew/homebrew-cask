cask "ridibooks" do
  version "0.9.2"
  sha256 "cb2bd7b9c54827e327c5bf79eb506c19d31978ba714bc45d124562f49b8b70d4"

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
