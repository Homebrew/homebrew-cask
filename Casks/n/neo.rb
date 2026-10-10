cask "neo" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "1.2.10"
  sha256 arm:          "59b64ffdc567dcb01c5ced116cea7dc3f2649ed95338b8ee96c29a5b545d885b",
         intel:        "cd109d380fbfc509a394265e0ff655b4d29a3fc2e885673b6919169dcbef19a4",
         arm64_linux:  "0f8dfb48b46e9ba5c59a9eb60432e6a5fc429ce4b56f0336eb3740f3f0b36d83",
         x86_64_linux: "a8a5d6a3d627c15b51984d3f7e4bfea6d5568c8741ade0122f6638515fbdb9ec"

  on_macos do
    depends_on macos: :monterey

    app "NEO.app"
  end
  on_linux do
    app_image "NEO-#{version}#{arch}.AppImage", target: "NEO.AppImage"
  end

  url "https://github.com/hughhowey/neo/releases/download/v#{version}/NEO-#{version}#{arch}.#{os}"
  name "NEO"
  desc "Distraction-free word processor for authors"
  homepage "https://github.com/hughhowey/neo"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hughhowey.neo.sfl*",
    "~/Library/Application Support/NEO",
    "~/Library/Caches/com.apple.helpd/Generated/macbook-neo",
    "~/Library/Caches/neo-updater",
    "~/Library/HTTPStorages/com.hughhowey.neo",
    "~/Library/Preferences/com.hughhowey.neo.plist",
  ]
end
