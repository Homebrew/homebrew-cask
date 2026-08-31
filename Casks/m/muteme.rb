cask "muteme" do
  arch arm: "arm64", intel: "64"

  version "0.28.0"
  sha256 arm:   "ec22c7b9635e16de6a83b1a4bb4cb05d5c67264e34525801d3dc30a8a43ea282",
         intel: "ae0aa8c48c10b9049c610eb5617a418d649d668489e50d8ac32e351857ffbe6b"

  url "https://downloads.muteme.com/download/#{version}/osx_#{arch}"
  name "MuteMe"
  desc "Companion application to MuteMe"
  homepage "https://muteme.com/"

  livecheck do
    url "https://downloads.muteme.com/download/latest/osx_#{arch}"
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :big_sur

  app "MuteMe-Client.app"

  zap trash: [
    "~/Library/Application Support/MuteMe-Client",
    "~/Library/Caches/com.electron.muteme-client",
    "~/Library/Caches/com.electron.muteme-client.ShipIt",
    "~/Library/HTTPStorages/com.electron.muteme-client",
    "~/Library/Preferences/com.electron.muteme-client.plist",
    "~/Library/Saved Application State/com.electron.muteme-client.savedState",
  ]
end
