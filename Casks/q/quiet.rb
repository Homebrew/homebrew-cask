cask "quiet" do
  arch arm: "arm64", intel: "x64"

  version "11.2.0"
  sha256 arm:   "d3684f7525b723bf53a73af2ed72b3681f0caed1851a3b8eb0cfa772a406e697",
         intel: "d9eecf3b3ddee1727a8a8220f348b7e620a810edf3488a8c630edf9e5468db89"

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
