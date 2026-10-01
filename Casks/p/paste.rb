cask "paste" do
  version "7.0.1"
  sha256 "94d893aad21aec260951ccac9bbd01ffe5b129314c3f7c88400f8a5a0b54864f"

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
