cask "paste" do
  version "6.6.10"
  sha256 "3710b379796259dbdfe00af65f40981fd464365f29c0ec3560b1a413cf9ea85b"

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
