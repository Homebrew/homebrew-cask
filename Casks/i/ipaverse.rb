cask "ipaverse" do
  version "2.5.3"
  sha256 "4dbea68099f225d2432757fb266fc636c07797123e1d8ce0589536541fa6c8fe"

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
