cask "ridibooks" do
  version "0.11.3"
  sha256 "3ed97e67c103f6aadfccd15d8aa30f0f871fa8b5b27638b46a8f14b49a94a46c"

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
