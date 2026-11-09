cask "colamd" do
  arch arm: "arm64", intel: "x64"

  version "2.7.11"
  sha256 arm:   "c6f1c503723c6480ad7569150defac15d311c0080fffc149de7d977967e4c9ba",
         intel: "25f62e9bf6af3d793909e7705803ff6d458fdcbd27960eafe4f72b1f1627243d"

  url "https://github.com/marswaveai/ColaMD/releases/download/v#{version}/ColaMD-#{version}-#{arch}.dmg"
  name "ColaMD"
  desc "Markdown editor"
  homepage "https://colamd.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "ColaMD.app"

  zap trash: [
    "~/.colamd",
    "~/Library/Application Support/colamd",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.marswave.colamd.sfl*",
    "~/Library/Preferences/ai.marswave.colamd.plist",
  ]
end
