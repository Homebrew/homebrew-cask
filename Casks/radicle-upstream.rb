cask "radicle-upstream" do
  version "0.2.3"
  sha256 "90dbbd40082f428e3b07778ec3ad41b0243b718ab87d02587202e6babf1bb653"

  url "https://releases.radicle.xyz/radicle-upstream-#{version}.dmg"
  name "Radicle Upstream"
  desc "Desktop client for Radicle, a p2p stack for code collaboration"
  homepage "https://radicle.xyz/"

  livecheck do
    url "https://github.com/radicle-dev/radicle-upstream"
    strategy :git
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
