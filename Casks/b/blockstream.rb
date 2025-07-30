cask "blockstream" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.27"
  sha256 arm:   "53d0fe29d60351dba80dbfff02c349352ba6221d9ef5acaafe365987b6b134d5",
         intel: "7b0deb503d4cdb9feefdf904013e69eb8dd221d04cee0880e73d7d9692bd4c09"

  url "https://github.com/Blockstream/green_qt/releases/download/release_#{version}/Blockstream-#{arch}.dmg",
      verified: "github.com/Blockstream/green_qt/"
  name "Blockstream Green"
  desc "Multi-platform Bitcoin and Liquid wallet"
  homepage "https://blockstream.com/green/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Blockstream.app"

  zap trash: [
    "~/Library/Application Support/Blockstream/Green",
    "~/Library/Caches/Blockstream/Green",
  ]
end
