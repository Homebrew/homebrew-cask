cask "buckets@beta" do
  arch arm: "arm64", intel: "amd64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"
  url_mid = on_system_conditional linux: "linux-latest-"

  version "0.81.1"
  sha256 arm:          "2bd4217dd75b3f813647c9f4a454e52e6e4c2dbb03bc96161f22e393360d86f3",
         intel:        "47ea9bf7f6c180a2ebb743ffdc6d235752aae87963fd2ed2983024f2e4cae4c7",
         arm64_linux:  "66918a00e6854e3f0e7461a08632d174bc75ccf38f222b099438e25c87161fde",
         x86_64_linux: "43379574cbe77b35c18ce65bbea1e4aeb7d90c89535455803935771e3ceb475a"

  on_macos do
    app "Buckets Beta.app"

    zap trash: [
      "~/Library/Application Support/Buckets Beta",
      "~/Library/Preferences/com.onepartrain.buckets.desktopbeta.plist",
    ]
  end
  on_linux do
    app_image "Buckets-Beta-linux-latest-#{arch}-#{version}.AppImage", target: "Buckets Beta.AppImage"
  end

  url "https://github.com/buckets/desktop-beta/releases/download/v#{version}/Buckets-Beta-#{url_mid}#{arch}-#{version}.#{url_end}"
  name "Buckets Beta"
  desc "Budgeting tool"
  homepage "https://www.budgetwithbuckets.com/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
