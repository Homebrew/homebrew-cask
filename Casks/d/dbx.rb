cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.11"
  sha256 arm:          "fdb2cc19d5af509570dc5b9d19f42dc0e122406e88dc4623d769325fea2b0acc",
         intel:        "427dac63052828d518557bda6579efee7405811f3e66c68c09758b9127c7579a",
         arm64_linux:  "0453c9dbb3f527dcbfaa3130de763606e34ff0697ba8710d192ee08fd56a9b5c",
         x86_64_linux: "a2c5e005a3aece14f8190529dc4587d11e3e418a26dd1304c3efcbee91a5e76f"

  on_macos do
    auto_updates true

    app "DBX.app"

    zap trash: [
      "~/Library/Application Support/com.dbx.app",
      "~/Library/Caches/com.dbx.app",
      "~/Library/Logs/com.dbx.app",
      "~/Library/Preferences/com.dbx.app.plist",
      "~/Library/WebKit/com.dbx.app",
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
