cask "radicle-upstream" do
  version "0.1.12"
  sha256 "77e39edd1eee90862cb056d02b77881615e5c68199d6731768ecc6c2da97d4cd"

  url "https://releases.radicle.xyz/radicle-upstream-#{version}.dmg"
  appcast "https://github.com/radicle-dev/radicle-upstream/releases.atom"
  name "Radicle Upstream"
  desc "Desktop client for Radicle, a p2p stack for code collaboration"
  homepage "https://radicle.xyz/"

  depends_on macos: ">= :mojave"

  app "Radicle Upstream.app"

  zap trash: [
    "~/.radicle",
    "~/Library/Application Support/Radicle Upstream",
    "~/Library/Application Support/xyz.radicle.radicle",
    "~/Library/Application Support/xyz.radicle.radicle-upstream",
    "~/Library/Preferences/xyz.radicle.radicle-upstream.plist",
    "~/Library/Saved Application State/xyz.radicle.radicle-upstream.savedState",
  ]
end
