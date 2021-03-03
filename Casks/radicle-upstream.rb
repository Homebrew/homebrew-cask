cask "radicle-upstream" do
  version "0.1.11"
  sha256 "057c8e39beedf2aceb05d3628cd84520b372ac9535f992edad9b65a4bc5c3068"

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
