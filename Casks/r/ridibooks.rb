cask "ridibooks" do
  version "0.11.7"
  sha256 "a4a5e72fb33f8d9c47e86383717531a7c81de1f877a8a0ae9c7a0b67b60687fb"

  url "https://viewer-ota.ridicdn.net/pc_electron/Ridibooks-#{version}-universal.dmg",
      verified: "viewer-ota.ridicdn.net/pc_electron/"
  name "Ridibooks"
  desc "Ebook reader"
  homepage "https://ridibooks.com/support/app/download"

  livecheck do
    url "https://s3-ap-northeast-2.amazonaws.com/viewer-ota.ridicdn.net/pc_electron/latest-mac.yml"
    strategy :electron_builder
  end

  app "Ridibooks.app"

  zap trash: [
    "~/Library/Application Support/RIDI",
    "~/Library/Preferences/com.ridibooks.Ridibooks.plist",
  ]
end
