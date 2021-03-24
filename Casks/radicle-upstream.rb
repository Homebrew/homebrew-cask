cask "radicle-upstream" do
  version "0.1.13"
  sha256 "86c19a25220f4fa476f3d1299cf8404a46e14b1abd0fe1a4835f154fdd39dbd0"

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
