cask "paste" do
  version "6.3.6"
  sha256 "10a91e8bbcee7e5f6dc2b77503ac082ed634d34d059423842d5164fed4ee6ff4"

  url "https://downloads.pasteapp.io/dist/stable/Paste-#{version}.zip"
  name "Paste"
  desc "Limitless clipboard"
  homepage "https://pasteapp.io/"

  livecheck do
    url "https://hub.pasteapp.io/downloads/stable/latest"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Paste.app"

  zap trash: [
    "~/Library/Application Support/com.wiheads.paste-direct",
    "~/Library/Caches/com.wiheads.paste-direct",
    "~/Library/HTTPStorages/com.wiheads.paste-direct",
    "~/Library/Preferences/com.wiheads.paste-direct.plist",
  ]
end
