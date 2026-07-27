cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.68"
  sha256 arm:          "fec35c3053482c3aee6239023eaffb460e6b591fd16fc3a03e3ad3fbb9fd2762",
         intel:        "f525d026e718a824906d31740d58844907ca1e3d349fa605223b6a3af568dbca",
         arm64_linux:  "dcab36cc7f9473b39a288d6f84aea12ef90ab01a2d15f8876529ffa10cbff786",
         x86_64_linux: "4785d04626fdad174ecb23d7bb14d46159dd860002f76e2a5255262716f5a503"

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

    app "DBX.app"

    zap trash: [
      "~/Library/Application Support/com.dbx.app",
      "~/Library/Caches/com.dbx.app",
      "~/Library/Logs/com.dbx.app",
      "~/Library/Preferences/com.dbx.app.plist",
    ]
  end
  on_linux do
    app_image "DBX_#{version}_#{arch}.AppImage", target: "DBX.AppImage"
  end

  url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_#{arch}.#{os}"
  name "DBX"
  desc "Database management tool"
  homepage "https://dbxio.com/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
