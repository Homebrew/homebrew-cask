cask "db-pro" do
  arch arm: "arm64", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "macos", linux: "linux"
  livecheck_file = on_system_conditional macos: "latest-mac.yml", linux: "latest-linux.yml"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.10.1"
  sha256 arm:          "f0ad3cc4c4bf45ae3d4ddba87cf2287a414df83fac55716573435d302124dcd1",
         intel:        "f61e4a6867dcd8565ed133124e86bb2037288e72625ffb9bee769c4c628db8d1",
         arm64_linux:  "7e74622ccd75bb8a59d7b61798f19eb4e3c66953764d5352c511fc92e1bb358b",
         x86_64_linux: "5f08e697d2519af5b0c7a87f8d673f540ba7e1531ce141d43c1274d1f6c1461f"

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
