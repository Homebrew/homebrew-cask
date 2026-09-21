cask "db-pro" do
  arch arm: "arm64", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "macos", linux: "linux"
  livecheck_file = on_system_conditional macos: "latest-mac.yml", linux: "latest-linux.yml"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.10.0"
  sha256 arm:          "7bafbcb368a75db1b6bcff9b4c0467033260b47855a470b3e1c097b5e16afc81",
         intel:        "acc9575fb56e189563b0168a28a31415c9642e9f00efd1dc0df96fc8de58ea8a",
         arm64_linux:  "e265b5542740eb73811f4de34e46203fd70fe83a2e3fe5f2c17515391d098011",
         x86_64_linux: "0d5be9e2a69b39630ee1788fff29ba979ba25ad7757377769d2e3166c9fa93b0"

  on_macos do
    depends_on macos: :monterey

    app "DB Pro.app"

    zap trash: [
      "~/Library/Application Support/DB Pro",
      "~/Library/Caches/@dbproelectron-updater",
      "~/Library/Caches/com.dbpro.app",
      "~/Library/Caches/com.dbpro.app.ShipIt",
      "~/Library/HTTPStorages/com.dbpro.app",
      "~/Library/Preferences/com.dbpro.app.plist",
    ]
  end
  on_linux do
    app_image "DB Pro-#{version}-#{file_arch}.AppImage", target: "DB Pro.AppImage"
  end

  url "https://releases.dbpro.app/#{os}-#{arch}/DB%20Pro-#{version}-#{file_arch}.#{url_end}"
  name "DB Pro"
  desc "Query, explore, and manage your databases with built-in AI"
  homepage "https://www.dbpro.app/"

  livecheck do
    url "https://releases.dbpro.app/#{os}-#{arch}/#{livecheck_file}"
    strategy :electron_builder
  end

  auto_updates true
end
