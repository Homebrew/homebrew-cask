cask "quiet" do
  arch arm: "arm64", intel: "x64"

  version "11.0.0"
  sha256 arm:   "7a2b54c8f5c2a05314def62a8a6becdc3f5d6c6df4fb754d9eba9b26dfbee22b",
         intel: "6bed4ccf4bd61438909e523b333cd6465165b5c954a59d8cf4fbcc7a52489864"

  url "https://github.com/TryQuiet/quiet/releases/download/@quiet/desktop@#{version}/Quiet-#{version}-#{arch}.dmg"
  name "Quiet"
  desc "Private, p2p alternative to Slack and Discord built on Tor & IPFS"
  homepage "https://tryquiet.org/"

  livecheck do
    url :homepage
    regex(/href=.*?Quiet[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on :macos

  app "Quiet.app"

  zap trash: "~/Library/Application Support/Quiet*"
end
