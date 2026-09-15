cask "ipaverse" do
  version "2.5.1"
  sha256 "69e26dc0920d09d1324d5170ff9f687da29cd85faf85f2e635f10e907408bf95"

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
