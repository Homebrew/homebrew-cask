cask "db-pro" do
  arch arm: "arm64", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "macos", linux: "linux"
  livecheck_file = on_system_conditional macos: "latest-mac.yml", linux: "latest-linux.yml"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.10.2"
  sha256 arm:          "1b69b018faedde04fe1c7216029f40510c3e7d8d6136605332bf4f354dd7231e",
         intel:        "5c5c4b5be08c2c5fe5e2a390bfa3dd5acb4cddcbcd3c59d98baab9a6b54355c2",
         arm64_linux:  "3bea20fa1ec2a17dcbab846b6cde8f9c11e748be0dd978aef59cfbde0c76e9b4",
         x86_64_linux: "758ab4b78387fe640411e22fe73cb84da53bbdb653718903580d5886b90ce31c"

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
