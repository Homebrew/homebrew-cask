cask "radicle-upstream" do
  version "0.1.8"
  sha256 "67106de5b6186075bf4da03ba7fb48bf3fc0d63f52f34f65da5ecc31ce70acae"

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
