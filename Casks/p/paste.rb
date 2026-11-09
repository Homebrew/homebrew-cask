cask "paste" do
  version "7.0.5"
  sha256 "d0cdd8161807714cc6324a3cf299b66f8ece405bb0445d0f8db11dcdc941cb8a"

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
