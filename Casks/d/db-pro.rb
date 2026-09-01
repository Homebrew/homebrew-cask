cask "db-pro" do
  arch arm: "arm64", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "macos", linux: "linux"
  livecheck_file = on_system_conditional macos: "latest-mac.yml", linux: "latest-linux.yml"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.8.1"

  on_macos do
    sha256 arm:   "5c8583e3da6c6cf98ac35dd47c03880275df9bfe558fb9791563241450bfea27",
           intel: "55da2a7c655334b154bd676ecc42a93113fef57da5411e4ae4e14542725e3b17"

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
    sha256 arm64_linux:  "cbefbfa43623547fd0ce2afbc0582233abdc9a7507b29307546463b828c465cd",
           x86_64_linux: "e70a958b1a18ffb7f66789618f0550e7e3039041f2b45e980016b9b572f0ed73"

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
