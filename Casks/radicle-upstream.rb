cask "radicle-upstream" do
  version "0.1.9"
  sha256 "af00d268ef33c44360796e1c05a3fd09ff4b3a1cf96bd70e759913f558240777"

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
