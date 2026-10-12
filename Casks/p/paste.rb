cask "paste" do
  version "7.0.2"
  sha256 "703414dcaee56fbaf7d06b53adf28401b5c905919975327eb1b022053525aff7"

  url "https://downloads.pasteapp.io/dist/stable/Paste-#{version}.zip"
  name "Paste"
  desc "Limitless clipboard"
  homepage "https://pasteapp.io/"

  livecheck do
    url "https://hub.pasteapp.io/downloads/stable/latest"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Paste.app"

  zap trash: [
    "~/Library/Application Support/com.wiheads.paste-direct",
    "~/Library/Caches/com.wiheads.paste-direct",
    "~/Library/Group Containers/group.com.wiheads.paste",
    "~/Library/HTTPStorages/com.wiheads.paste-direct",
    "~/Library/Preferences/com.wiheads.paste-direct.plist",
  ]
end
