cask "ridibooks" do
  version "0.11.5"
  sha256 "d4914ab1b9cc2f8bf2afa5c79b8404cf99bc743ae4198ff214084e71cb075c0d"

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
