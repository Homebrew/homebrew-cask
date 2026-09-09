cask "db-pro" do
  arch arm: "arm64", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "macos", linux: "linux"
  livecheck_file = on_system_conditional macos: "latest-mac.yml", linux: "latest-linux.yml"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.9.1"
  sha256 arm:          "8209adfcaf624997aaeb083bb754944018df949873134e9cda7a5a56ec43f63a",
         intel:        "d8178c8b11a5a8bc2b3007bbca6cc1ba6b725f7e91d152dc9b651e972ae06135",
         arm64_linux:  "c1a870c8d7067d743b479c64dda84a4030d81d0dd23244d874afffd652ff60b6",
         x86_64_linux: "e83c7a744896124641cf7495850ffb0f5c1088a45bfb52fd57f78b3c50d08027"

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
