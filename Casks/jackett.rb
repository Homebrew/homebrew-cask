cask "jackett" do
  version "0.17.952"
  sha256 "c1af70fd3aeae0cbabff619ae90d0fd607b71134d2aecd77eba92f701ffe9a27"

  url "https://github.com/Jackett/Jackett/releases/download/v#{version}/Jackett.Binaries.macOS.tar.gz"
  name "Jackett"
  desc "BitTorrent indexer (with API support) for torrent trackers"
  homepage "https://github.com/Jackett/Jackett"

  depends_on macos: ">= :high_sierra"

  artifact "Jackett", target: "/Library/Jackett"

  zap trash: "~/.config/Jackett"

  caveats do
    path_environment_variable "/Library/Jackett"
    "This cask only installs Jackett as a binary executable, not a launchd service."
  end
end
