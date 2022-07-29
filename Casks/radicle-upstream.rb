cask "radicle-upstream" do
  version "0.3.2"
  sha256 "f197b3858ed84506019afd25a3e1b5d61b9858cea4f4e460a21c0fd5aafc0d8e"

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
