cask "radicle-upstream" do
  version "0.3.2"
  sha256 "d52d9c101c4c59fb414ef736c49e5f751ee1be5b407d3bf26e097bb01ffca29d"

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
