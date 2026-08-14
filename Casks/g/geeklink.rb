cask "geeklink" do
  version "0.4.16"
  sha256 "b527de514e93ec4921898655c8ffa7522fcdec9c78d3b53cbf4c3ca16f73244d"

  url "https://geeklink.dev/dmg/GeekLink-#{version}.dmg"
  name "GeekLink"
  desc "Local subtitle transcription, translation, and burned-in subtitle OCR"
  homepage "https://geeklink.dev/"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "GeekLink.app"

  zap trash: [
    "~/Library/Application Support/GeekLink",
    "~/Library/Preferences/com.geeklink.subtitletool.plist",
    "~/Library/Saved Application State/com.geeklink.subtitletool.savedState",
  ]
end
