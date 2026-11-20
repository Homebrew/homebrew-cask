cask "biscotti" do
  version "1.0.0"
  sha256 "a519a352c612f6461cd5b68d4b296fdd17e0c94277b048c675cd23f6f2466fc7"

  url "https://github.com/scosman/Biscotti/releases/download/v#{version}/Biscotti.dmg"
  name "Biscotti"
  desc "Private meeting transcription"
  homepage "https://biscottiapp.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Biscotti.app"

  uninstall quit: "net.scosman.biscotti"

  zap trash: [
    "~/Library/Application Support/Biscotti",
    "~/Library/Preferences/net.scosman.biscotti.plist",
  ]
end
