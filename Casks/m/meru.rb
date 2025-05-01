cask "meru" do
  version "3.0.0"

  on_arm do
    sha256 "571dfadca367eff049b67913fb17d47a6dcaf1bca146fc2b5f8d50e250257c17"

    url "https://github.com/zoidsh/meru/releases/download/v#{version}/Meru-#{version}-arm64.dmg",
        verified: "github.com/zoidsh/meru/"
  end
  on_intel do
    sha256 "d3507c8792becfce6c28ea247b2168eea0ea88ed3b1725f8f330cd96be35c76f"

    url "https://github.com/zoidsh/meru/releases/download/v#{version}/Meru-#{version}.dmg",
        verified: "github.com/zoidsh/meru/"
  end

  name "Meru"
  desc "Gmail experience you deserve"
  homepage "https://meru.so/"

  livecheck do
    url "https://github.com/zoidsh/meru/releases/latest"
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Meru.app"

  zap trash: [
    "~/Library/Application Support/Meru",
    "~/Library/Caches/meru-updater",
    "~/Library/Caches/sh.zoid.meru",
    "~/Library/Caches/sh.zoid.meru.ShipIt",
    "~/Library/HTTPStorages/sh.zoid.meru",
    "~/Library/Logs/Meru",
    "~/Library/Preferences/sh.zoid.meru.plist",
    "~/Library/Saved Application State/sh.zoid.meru.savedState",
    "~/Library/WebKit/sh.zoid.meru",
  ]
end
