cask "monal" do
  version "1098"
  sha256 "196b09114dec2917f81f69232be00327bd430a6bec0ca9d1c290f35509a1fb78"

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
