cask "ipaverse" do
  version "2.5.2"
  sha256 "db220a8eac4742768972d49a7e15c047a741e94557ea3aa0a080290f0eb2067a"

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
