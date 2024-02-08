cask "ridibooks" do
  version "0.11.2"
  sha256 "d32a89f78b8b7cde216334741919ad7b2107e8216126434bf4df0dd19c439b17"

  url "https://viewer-ota.ridicdn.net/pc_electron/Ridibooks-#{version}-universal.dmg",
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
