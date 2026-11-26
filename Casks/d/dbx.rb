cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.75"
  sha256 arm:          "b1334348ac694efcd3af03211a4af9caa4b27be1c03e93db5ec50181b4d178da",
         intel:        "f96f25d7be887f9d2dc25fd94e26aaa687ff76e91d5100f452f81fca80386d04",
         arm64_linux:  "7864c2c09594c4fa3b6b3c41afd909b4a174faa913b9401d48375b7013981b7c",
         x86_64_linux: "38f1c5e806bc85737e5ef327277477a00935781b1abae02eab69804bb752dd7a"

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

    zap trash: [
      "~/.cache/com.dbx.app",
      "~/.local/share/applications/dbx-handler.desktop",
      "~/.local/share/com.dbx.app",
    ]
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
