cask "monal" do
  version "1102"
  sha256 "22dbea89fbec3b8456f0bdb41b559dc78fbc6d29131998497c6e7cc83b7754ff"

  url "https://downloads.monal-im.org/monal-im/stable/macOS/Monal-#{version}.zip"
  name "Monal"
  desc "XMPP chat client"
  homepage "https://monal-im.org/"

  livecheck do
    url "https://downloads.monal-im.org/monal-im/stable/macOS/latest.txt"
    regex(/^(\d+)$/i)
  end

  conflicts_with cask: "monal@beta"
  depends_on :macos

  app "Monal.app"

  uninstall quit: "org.monal-im.prod.catalyst.monal"

  zap trash: "~/Library/Group Containers/group.monal"
end
