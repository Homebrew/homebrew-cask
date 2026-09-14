cask "ipaverse" do
  version "2.5.0"
  sha256 "4b085c498f3c32bb6beba93eb8af1a3258c00dc77a3dfb3d5da6fae6a046c832"

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
