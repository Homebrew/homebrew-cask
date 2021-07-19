cask "radicle-upstream" do
  version "0.2.8"
  sha256 "7ca35cea099b4f1df4dc87c20b7dfb2725e5395b39f33269e836e70a6b589cf1"

  url "https://releases.radicle.xyz/radicle-upstream-#{version}.dmg"
  name "Radicle Upstream"
  desc "Desktop client for Radicle, a p2p stack for code collaboration"
  homepage "https://radicle.xyz/"

  livecheck do
    url "https://github.com/radicle-dev/radicle-upstream"
  end

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
