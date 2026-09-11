cask "ipaverse" do
  version "2.4.0"
  sha256 "bee5454a462a3a0c593b3209b47bfc0c1cef9f161e76a68b7a67b8237f906997"

  url "https://github.com/bahattinkoc/ipaverse/releases/download/v#{version}/ipaverse.dmg"
  name "ipaverse"
  desc "App Store package downloader, IPA re-signer, and security analysis toolkit"
  homepage "https://github.com/bahattinkoc/ipaverse"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :sonoma

  app "ipaverse.app"

  zap trash: [
    "~/Library/Application Support/ipaverse",
    "~/Library/Caches/com.ipaverse",
    "~/Library/Preferences/com.ipaverse.plist",
  ]
end
